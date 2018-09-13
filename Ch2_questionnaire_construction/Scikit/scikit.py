# -*- coding: utf-8 -*-

import numpy as np
execfile('../utils.py')
from sklearn.cluster import KMeans

DmFile = '../../Ch1_frame_verification/Distributional data preparation/spaces/smooth_ruscorp_wa_ppmi_300_norm.dm'
OutFile = 'results_quest/smooth_kmeans.txt' # clustering results in a human readable format
OutFile_raw = 'results_quest/smooth_kmeans_raw.txt' # clustering results in the raw format 

# Turning the distributional space into the array format

array = convert_to_array(DmFile)[0]
rows = convert_to_array(DmFile)[1]

X = np.array(array)
print X.shape

# Clustering
kmeans = KMeans (n_clusters=35).fit(X)
labels = kmeans.labels_

# Results into a file (a raw format)
with open(OutFile_raw, 'w') as f_raw:
    for label in labels:
        f_raw.write(str(label)+'\r\n')

dict = labeling(rows, labels)

# Results into a file (a human readable format)
human_readable_file(dict, OutFile)
