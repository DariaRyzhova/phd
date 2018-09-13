# encoding: utf-8

import os, re
import translit as tr

VectorDirectory = 'vectors/smooth_words' # directory containing all relevant vector files
FreqFile = 'freq_list.txt' # file with a list of the dimension words (one word per line)
dmFile = 'spaces/smooth_words.dm' # output matrix file
rowsFile = 'spaces/smooth_words.rows' # output rows file

def dictionary_preparation(file, dict):
    for line in file:
        line = line.split('\t')
        if line[0] not in dict:
            dict[line[0]] = {}
        if line[1] in dict[line[0]]:
            dict[line[0]][line[1]] += int(line[2].strip())
        else:        
            dict[line[0]][line[1]] = int(line[2].strip())
    return dict
        
vector_files = os.listdir(VectorDirectory)
dict = {}
for file in vector_files:
    with open('./'+VectorDirectory+'/'+file, 'r') as vector_file:
        dict = dictionary_preparation(vector_file, dict)

with open(dmFile, 'w') as f_space_dm:
    for item in dict:
        with open(rowsFile, 'a') as f_rows:
            f_rows.write(item+'\n')
        f_space_dm.write(item + '\t')
        with open(FreqFile, 'r') as f_cols:
            for line in f_cols:
                line = line.strip()
                if line in dict[item]:
                    f_space_dm.write(str(dict[item][line]) + '\t')
                else:
                    f_space_dm.write('0' + '\t')
        f_space_dm.write('\n')
