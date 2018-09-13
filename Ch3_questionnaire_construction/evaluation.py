# -*- coding: utf-8 -*-
import os

InputFile = 'Scikit/results_quest/smooth_kmeans_rand.txt'
EvalFiles = os.listdir('eval_files')
path = 'eval_files/'
OutputFile = 'smooth_kmeans_rand_eval.txt'

def GS(path, list_of_eval): # list of the '_markup' files
    GSdict = {}
    for name in list_of_eval:
        with open(path+name, 'r') as eval_file:
            for line in eval_file:
                line = line.strip('\r\n').split('\t')
                if line[0] not in GSdict:
                    GSdict[line[0]] = line[1].split('|')
    return GSdict

def frames_listing(GSdict): # number of frames in the domain (according to the Gold Standard)
    frames_list = set()
    for phrase in GSdict:
        for item in GSdict[phrase]:
            if item != '0':
                frames_list.add(item)
    return frames_list

def numbers(GSdict, clusts): # assigning frame numbers to cluster elements
    n_clusts = []
    for clust in clusts:
        n_clusts.append([])
        for item in clust:
            if item in GSdict:
                for num in GSdict[item]:
                   n_clusts[-1].append(num)
            else:
                n_clusts[-1].append('0')
    return n_clusts    

def eval_frames(n_clusts, frames_total, frames_list):
    numbers = set()
    missed = set()
    for item in n_clusts:
        for frame in item:
            if frame in frames_list:
                numbers.add(frame)
    a = len(numbers)
    for frame in frames_list:
        if frame not in numbers:
            missed.add(frame)
    recall = float(a) / float(frames_total)
    return recall, missed

def eval_mf(n_clusts):
    non_zeros = 0
    all_mf = 0
    for item in n_clusts:
        for i in item:
            all_mf = all_mf + 1
            if i != '0':
                non_zeros = non_zeros + 1
    if all_mf != 0:
        res = float(non_zeros) / float(all_mf)
    else:
        res = 0
    return res
    
def eval_purity(n_clusts):
    purity = 0
    for clust in n_clusts:
        max = 0
        for frame in clust:
            if clust.count(frame) > max:
                max = clust.count(frame)
        clust_pur = float(max) / float(3)
        purity += clust_pur
    if len(n_clusts) != 0:
        purity = purity / float(len(n_clusts)) 
    else:
        purity = 0
    return purity

GSdict = GS(path, EvalFiles)
frames_list = frames_listing(GSdict)
frames_total = len(frames_list)

with open(InputFile, 'r') as f:
    clusters = []
    for line in f:
        line = line.strip()
        line = line.split('\t')
        if line[0][-1] == ':':
            clusters.append([])
        else:
            if len(clusters) >= 1:
                clusters[-1].append(line[0])
    n_clusts = numbers(GSdict,clusters)
    frames = eval_frames(n_clusts, frames_total, frames_list)
    purity = eval_purity(n_clusts)
    mfs = eval_mf(n_clusts)
    with open(OutputFile, 'w') as f_res:
        string = str(frames[0]) + '\t' + str(purity) + '\t' + str(mfs) + '\r\n'
        f_res.write(string)
