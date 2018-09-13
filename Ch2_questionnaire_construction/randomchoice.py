# encoding: utf-8
import random
from utils import labeling

InputFile = './Scikit/results_quest/smooth_kmeans_raw.txt' # file with the raw clustering results
RowsFile = '../Ch1_frame_verification/Distributional data preparation/spaces/smooth_ruscorp_wa_ppmi_300_norm.rows'
OutputFile = InputFile[:-7] + 'rand' + '.txt'

clusters = []
with open(InputFile, 'r') as f:
    for line in f:
        line = line.strip('\r\n')
        clusters.append(line)

rows = []
with open(RowsFile, 'r') as f_rows:
    for line in f_rows:
        line = line.strip('\r\n')
        rows.append(line)

dict = labeling(rows, clusters)

for cluster in dict:
    if cluster != '-1':
        with open(OutputFile, 'a') as f_res:
            if len(dict[cluster]) >= 3:
                f_res.write(cluster+':\r\n')
                for colloc in random.sample(dict[cluster], 3):
                    f_res.write(colloc+'\r\n')