# -*- coding: utf-8 -*-
import os, codecs
import translit as tr
from collections import Counter

CorpFiles = os.listdir('/home/dryzhova/disamb/corpora/ruscorp_main_processed') # corpus file(s)
CorpPath = '/home/dryzhova/disamb/corpora/ruscorp_main_processed/' # path to the corpus file(s)
OutDir = 'smooth_statistics' # output directory

words = ['гладкий', 'скользкий', 'ровный'] # lexemes constituting the field in Russian

dict_stat = {}
flag = {}
for word in words:
    dict_stat[word] = {}
    flag[word] = False 

for file in CorpFiles:
    with open(CorpPath+file, 'r') as f_input:
        for line in f_input:
            line = line.split('\t')
            if len(line) >= 2:
                morph = line[1].split('=')
                for word in words:
                    if flag[word] == True:
                        tags = morph[1].split(',')
                        pos = tags[0].strip()
                        #case = tags[4].strip()
                        if pos == 's': #and tags[4] == 'n'
                            lemma = morph[0]
                            if lemma not in dict_stat[word]:
                                dict_stat[word][lemma] = 0
                            dict_stat[word][lemma] += 1
                    
                    if word != morph[0]:
                        flag[word] = False
                    else:
                        flag[word] = True

for word in words:
    with open(OutDir + '/statistics_' + tr.translit(word) + '.txt', 'w') as f_stat:
        for noun in sorted(dict_stat[word], key=lambda i: dict_stat[word][i], reverse=True):
            f_stat.write(noun+'\t'+str(dict_stat[word][noun])+'\r\n')