# -*- coding: utf8 -*-
import codecs

FrameVectorFile = 'frame-vector.txt'
DBfile = 'smooth_db_filled.csv'
phrasesFile = 'smooth_phrases.txt'
phrasesDirFile = 'smooth_phrases_dir.txt'
wordsFile = 'smooth_words.txt'

dict = {}
with codecs.open(DBfile, 'r', 'utf-8-sig') as f_db:
    for line in f_db:
        elements = line.strip().split(';')
        if len(elements) >= 8:
            sense = elements[7]
            frame = elements[2]
            if sense not in dict:
                dict[sense] = []
            if frame not in dict[sense]:
                dict[sense].append(frame)

frame_phrase = {}
with codecs.open(FrameVectorFile, 'r', 'utf-8-sig') as f_corr:
    for line in f_corr:
        line = line.strip().split('\t')
        frame_phrase[line[0].lower()] = line[1]

with codecs.open(phrasesFile, 'w', 'utf-8') as f_ph:
    for sense in dict:
        for frame in dict[sense]:
            f_ph.write(frame_phrase[frame]+'\r\n')

with codecs.open(phrasesDirFile, 'w', 'utf-8') as f_phdir:
    for frame in dict[u'и']:
        f_phdir.write(frame_phrase[frame]+'\r\n')

words = []
with codecs.open(phrasesFile, 'r', 'utf-8') as f_ph_done:
    for line in f_ph_done:
        line = line.strip().split('_')
        for word in line:
            if word not in words:
                words.append(word)

with codecs.open(wordsFile, 'w', 'utf-8') as f_words:
    f_words.write(('\r\n').join(words))
    
