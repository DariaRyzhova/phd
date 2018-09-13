# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt
import scipy
import scipy.cluster.hierarchy as hcluster

execfile('../utils.py')

DmFile = '../../Ch1_frame_verification/Distributional data preparation/spaces/smooth_ruscorp_wa_ppmi_300_norm.dm'
OutFile = 'results_quest/smooth_hc_0.8.txt' # clustering results in a human readable format
OutFile_raw = 'results_quest/smooth_hc_0.8_raw.txt' # clustering results in the raw format 

# Turning the distributional space into the array format
array = convert_to_array(DmFile)[0]
rows = convert_to_array(DmFile)[1]

X = np.array(array)
print X.shape

# Clustering
clusters = hcluster.fclusterdata(X, 0.8, "inconsistent", "cosine")
print('Estimated number of clusters: %d' % len(set(clusters)))

dict = labeling(rows, clusters)

# Results into a file (a human readable format)
human_readable_file(dict, OutFile)

# Results into a file (a raw format)
with open(OutFile_raw, 'w') as f_raw:
	for cluster in clusters:
		f_raw.write(str(cluster)+'\r\n')

# plotting
#plt.scatter(*np.transpose(X), c=clusters)
#plt.axis("equal")
#title = "threshold: %f, number of clusters: %d" % (t, len(set(clusters)))
#plt.title(title)
#plt.show()
