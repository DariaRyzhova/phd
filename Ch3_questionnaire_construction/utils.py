def convert_to_array(DmFile):
    array = []
    rows = []
    with open(DmFile, 'r') as f_matrix:
        for line in f_matrix:
            vector = []
            line = line.strip()
            line = line.split('\t')
            if len(line) > 2:
                for num in line[1:]:
                    vector.append(float(num))
                array.append(vector)
                rows.append(line[0]) # Getting a massive of the rows' labels
    return array, rows

def labeling(rows, clust_numbers):
    dict = {}
    for i, clust in enumerate(clust_numbers):
        if str(clust) not in dict:
            dict[str(clust)] = []
        dict[str(clust)].append(rows[i])
    return dict

def human_readable_file(dict, filename):
    with open(filename, 'w') as final:
        for cluster in dict:
            final.write('\r\n'+cluster+':')
            group = ('\r\n').join(dict[cluster])
            final.write('\r\n'+group)
