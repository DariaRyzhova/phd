# encoding: utf-8
import os, codecs
import translit as tr
import utils as ut
from composes.utils import io_utils
from composes.semantic_space.space import Space
from composes.similarity.cos import CosSimilarity

DmFile = '../Ch1_frame_verification/Distributional data preparation/spaces/smooth_ruscorp_wa_ppmi_300_norm.dm'
RowsFile = '../Ch1_frame_verification/Distributional data preparation/spaces/smooth_ruscorp_wa_ppmi_300_norm.rows' 
clust_file = 'SciPy/results_quest/smooth_hc_0.8_raw.txt'
CentroidsDmFile = DmFile[:-3] + '_centr' + '.dm'
CentroidsRowsFile = RowsFile[:-5] + '_centr' + '.rows'
OutputFile = clust_file[:-7] + 'centr' + '.txt'

# loading initial distributional space

matrix_dict = {}

with open(DmFile, 'r') as f_matrix:
    for line in f_matrix:
        line = line.strip()
        line = line.split('\t')
        matrix_dict[line[0]] = line[1:]

# computing an average vector for every cluster, adding it to the initial space

clusters = []
with open(clust_file, 'r') as f:
    for line in f:
        line = line.strip('\r\n')
        clusters.append(line)
        
rows = []
with open(RowsFile, 'r') as f_rows:
    for line in f_rows:
        line = line.strip('\r\n')
        rows.append(line)
                
dict = ut.labeling(rows, clusters)

for cluster in dict:
    #print cluster, dict[cluster]
    new_elem = 'center_'+cluster
    matrix_dict[new_elem] = []
    for term in dict[cluster]:
        for i, num in enumerate(matrix_dict[term]):
            if len(matrix_dict[new_elem]) == i:
                matrix_dict[new_elem].append(float(num))
            else:
                matrix_dict[new_elem][i] += float(num)
    for item in matrix_dict[new_elem]:
        item = item/len(dict[cluster])

# Composing a new semantic space

with open(CentroidsDmFile, 'w') as f_space_dm:
    for term in matrix_dict:
        with open(CentroidsRowsFile, 'a') as f_rows:
            f_rows.write(term+'\r\n')
        f_space_dm.write(term + '\t')
        for num in matrix_dict[term]:
            f_space_dm.write(str(num) + '\t')
        f_space_dm.write('\r\n')

my_space_new = Space.build(data = CentroidsDmFile,
                       rows = CentroidsRowsFile,
                       format = "dm")

# Extracting core elements from every cluster

for cluster in dict:
    if cluster != '-1':
        dict_cos = {}
        for element in dict[cluster]:
            cos = my_space_new.get_sim(element, 'center_'+cluster, CosSimilarity())
            dict_cos[element] = cos
        dict_cos_new = sorted(dict_cos, key=lambda x: dict_cos[x], reverse=True)
        with open(OutputFile, 'a') as f_res:
            if len(dict_cos_new) >= 3:
                f_res.write(cluster+':\r\n')
                for colloc in dict_cos_new[:3]:
                    f_res.write(colloc+'\t'+str(dict_cos[colloc])+'\r\n')