# -*- coding: utf-8 -*-
import codecs

FrameVectorFile = 'frame-vector.txt'
DBfile = 'smooth_db_filled.csv'
dmFile = 'smooth.dm'
rowsFile = 'smooth.rows'

phrases = set()
corr = {}
with codecs.open(FrameVectorFile, 'r', 'utf-8-sig') as f_corr:
    for line in f_corr:
        line = line.strip('\r\n')
        line = line.split('\t')
        if line[0].lower() not in corr:
            corr[line[0].lower()] = line[1]
            phrases.add(line[1])

dict = {}
words = []
with codecs.open(DBfile, 'r', 'utf-8-sig') as f_db:
    for line in f_db:
        line = line.strip().split(u';')
        phrase = corr[line[2]]
        word = line[0].strip(u'-')
        if word not in words:
            words.append(word)
        if phrase in phrases:
            if phrase not in dict:
                dict[phrase] = {}
            if word not in dict[phrase] and u'-' not in line[0]:
                dict[phrase][word] = '1'
            elif word not in dict[phrase] and u'-' in line[0]:
                dict[phrase][word] = '0'

with codecs.open(rowsFile, 'w', 'utf-8') as f_rows:
    with codecs.open(dmFile, 'w', 'utf-8') as f_matrix:
        for phrase in phrases:
            #print phrase
            vector = [phrase]
            f_rows.write(phrase+'\r\n')
            for word in words:
                #print phrase, word
                if word not in dict[phrase]:
                    dict[phrase][word] = '0'
                vector.append(dict[phrase][word])
            string = (u'\t').join(vector)
            f_matrix.write(string+'\r\n')
            
