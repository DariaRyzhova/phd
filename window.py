# -*- coding: utf-8 -*-
import os, shutil, codecs
from collections import Counter
import translit as tr

def window(corp_out, corp_in, filetype, filename, function, dict):
    
    def wordlist_from_file(filename):
        words = []        
        with codecs.open(filename, 'r', 'utf-8') as f_input:
            for line in f_input:
                line = line.strip()
                #line = line.encode('utf-8')
                if line not in words:
                    words.append(line)
        return words

    def phraselist_from_file(filename, function):
        words = []
        phrases = {}        
        with open(filename, 'r') as f_input:
            for line in f_input:
                line = line.strip()
                line = line.split('_')
                if line[0] not in phrases:                 
                    phrases[line[0]] = []
                phrases[line[0]].append(line[1])
                for word in line:
                    words.append(word)
        if function == 'w':
            return set(words)
        else:
            return phrases 

    def list_from_statistics(adjectives, function):
        words = []
        phrases = {}
        #phrases['прямо'] = []
        for adjective in adjectives:
            adjective = adjective.encode('utf-8')
            words.append(adjective)
            phrases[adjective] = []
            with codecs.open('./statistics/adjectives100/statistics_'+tr.translit(adjective)+'.txt', 'r', 'utf-8') as f_input:
            #with open('./statistics/straight/statistics_prjamo_'+adjective+'.txt', 'r') as f_input:
                for line in f_input:
                    line = line.strip()
                    line = line.split('\t')
                    #if adjective == 'падать' or adjective == 'упасть':
                     #   min = 50
                    #if adjective[-7:] == 'скочить' or adjective[-8:] == 'валиться':
                     #   min = 5
                    #elif adjective == 'слететь':
                     #   min = 10
                    #else:
                    min = 10
                    if int(line[1])>=min:
                        line[0] = line[0].encode('utf-8')
                        words.append(line[0])
                        phrases[adjective].append(line[0])
        if function == 'w':
            return set(words)
        else:
            return phrases

    def compute_wordvector(corpora_pairs, words):
        for pair in corpora_pairs:
            dict_words = {}
            forw = {}
            for word in words:
                #word = word.encode('utf-8')
                if os.path.exists(pair[1]+'/vector_'+tr.translit(word)+'.txt') == False:
                    dict_words[word] = []
                    forw[word] = 0
            
            if len(dict_words) != 0:    
                lemmas = []
                corp_files = os.listdir(pair[0])
                for file in corp_files:
                    with codecs.open(pair[0]+ '/' + file, 'r', 'utf-8') as f_corp:
                        for line_c in f_corp:
                            line_c = line_c.strip()
                            line_c = line_c.encode('utf-8')
                            for item in forw:
                                if forw[item] != 0:
                                    if line_c in freqList:
                                        dict_words[item].append(line_c)
                                    forw[item] -= 1
                            if line_c in dict_words:
                                for x in range(1,6):
                                    if len(lemmas) >= x:
                                        if lemmas[-x] in freqList:
                                            dict_words[line_c].append(lemmas[-x])
                                forw[line_c] = 5
                            if len(lemmas) == 6:
                                del lemmas[0]
                            lemmas.append(line_c)
                    
            for word in dict_words:
                strings = []
                cooc = Counter()
                for elem in dict_words[word]:
                    cooc[elem] += 1
                for lemma in cooc:
                    num = str(cooc[lemma])
                    #num = num.encode('utf-8')
                    string = '\t'.join([word.decode('utf-8'),lemma.decode('utf-8'),num])
                    strings.append(string)

                with open('./'+pair[1]+'/vector_'+tr.translit(word)+'.txt', 'w') as f_res:
                    for string in strings:
                        #print string
                        f_res.write(string.encode('utf-8') + '\r\n')

    def compute_phrasevector(corpora_pairs, phrases):
        for pair in corpora_pairs:
            phrase_dict = {}
            forw = {}
            flag_adj = {}
            for adj in phrases:
                phrase_dict[adj] = {}
                forw[adj] = {}
                flag_adj[adj] = False
                for noun in phrases[adj]:
                    filedone = pair[1]+'/vector_'+tr.translit(adj)+'_'+tr.translit(noun)+'.txt'
                    if os.path.exists(filedone) == False:
                        phrase_dict[adj][noun] = []
                        forw[adj][noun] = 0
            lemmas = []
            files = os.listdir(pair[0])
            for file in files:
                with open(files+'/'+pair[0], 'r') as f_corp:
                    for line_c in f_corp:
                        line_c = line_c.strip()
                        for adj in forw:
                            for noun in forw[adj]:
                                if forw[adj][noun] != 0:
                                    if line_c in freqList:
                                        phrase_dict[adj][noun].append(line_c)
                                        forw[adj][noun] -= 1

                            if flag_adj[adj] == True:
                                if line_c in phrase_dict[adj]:
                                    for x in range(2,7):
                                        if len(lemmas) >= x:
                                            if lemmas[-x] in freqList:
                                                phrase_dict[adj][line_c].append(lemmas[-x])
                                    forw[adj][line_c] = 5
                
                            if line_c == adj:
                                flag_adj[adj] = True
                            else:
                                flag_adj[adj] = False

                        if len(lemmas) == 7:
                            del lemmas[0]
                        lemmas.append(line_c)
    
            for adj in phrase_dict:
                for noun in phrase_dict[adj]:
                    strings = []
                    cooc = Counter()
                    for word in phrase_dict[adj][noun]:
                        cooc[word] += 1
                    for lemma in cooc:
                        string = '\t'.join([adj+'_'+noun,lemma,str(cooc[lemma])])
                        strings.append(string)

                    with open('./'+pair[1]+'/vector_'+adj+'_'+noun+'.txt', 'w') as f_res:
                        for string in strings:
                            f_res.write(string + '\r\n')

    #Preparation of corpora_pairs (output directories)
    #rnc_in = os.listdir('corpora/ruscorpora/ruscorpora_lemmas')
    #rw_in = ['./corpora/ruwac_processed.txt']


    corpora_pairs = []
    if args.corp_in and args.corp_out:
        corpora_pairs.append([corp_in, corp_out])
    #if args.rnc_out:
     #   corpora_pairs.append([rnc_in, rnc_out])
    #if args.rw_out:
     #   corpora_pairs.append([rw_in, rw_out])
    if len(corpora_pairs) == 0:
        raise NameError('Where is the output directory?')

    #Preparation of the dimensions
    
    freqList = set()
    if args.dict:
        with codecs.open(dict, 'r', 'utf-8') as f_freq:
            for line in f_freq:
                line = line.split()
                word = line[0].strip()
                freqList.add(word.encode('utf-8'))
        
    if filetype == 'n':
        items = wordlist_from_file(filename)
    elif filetype == 'a':
        adjectives = wordlist_from_file(filename)
        items = list_from_statistics(adjectives, function)
    elif filetype == 'p':
        items = phraselist_from_file(filename, function)

    if function == 'w':
        compute_wordvector(corpora_pairs, items)
    else:
        compute_phrasevector(corpora_pairs, items)

if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser()
    parser.add_argument('-dict', '--dict', help="freqdict")
    parser.add_argument('-corp_in', '--corp_in',  help="corpus input directory")
    parser.add_argument('-corp_out', '--corp_out', help="corpus output directory")
    #parser.add_argument('-rw_out', '--rw_out', help="ruwac output directory")
    parser.add_argument('-ft', '--filetype', help="type of the input file: n (nouns), a (adjectives) or p (phrases)", required=True)
    parser.add_argument('-fn', '--filename', help="name (and path) of the input file", required=True)
    parser.add_argument('-f', '--func', help="function: w or ph", required=True)
    
    args = parser.parse_args()
    window(corp_out=args.corp_out, corp_in=args.corp_in, filetype=args.filetype, filename=args.filename, function=args.func, dict=args.dict)
