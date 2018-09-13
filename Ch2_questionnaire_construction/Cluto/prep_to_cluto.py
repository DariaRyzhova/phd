DmFile = '../../Ch1_frame_verification/Distributional data preparation/spaces/smooth_phrases.dm' # distributional space that has to be clustered
ClutoInput = 'data/smooth_phrases_to_cluto.dm' # the same space in another format 

cluto_strings = []

with open(DmFile, 'r') as f_input:
    for line in f_input:
        if line != '\r\n':
            line = line.strip()
            line = line.split('\t')
            line_new = line[1:]
            cluto_strings.append(line_new)

with open(ClutoInput, 'w') as f_output:
    f_output.write(str(len(cluto_strings)) + ' ' + str(len(cluto_strings[0])))
    for string in cluto_strings:
        new_string = (' ').join(string)
        f_output.write('\n'+new_string)
