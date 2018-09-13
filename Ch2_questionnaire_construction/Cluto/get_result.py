import os

clusterings = os.listdir('./clusters/sharp_dec_300_112')

for clustering in clusterings:
    clusters = []
    with open('./clusters/sharp_dec_300_112/'+clustering, 'r') as f_res:
        for line in f_res:
            line = line.strip('\r\n')
            clusters.append(line)

    rows = []
    with open('./data/sharp/sharp_phys_300_dec.rows', 'r') as f_rows:
        for line in f_rows:
            line = line.strip('\r\n')
            rows.append(line)

    dict = {}
    for i in range(len(clusters)):
        if clusters[i] not in dict:
            dict[clusters[i]] = []
            dict[clusters[i]].append(rows[i])
        #print rows[i]
        else:
            dict[clusters[i]].append(rows[i])

    with open('./results_quest/sharp_dec_300_112/'+clustering, 'w') as final:
        for cluster in dict:
            final.write('\r\n'+cluster+':')
            group = ('\r\n').join(dict[cluster])
            final.write('\r\n'+group)
