import codecs

InputFileName = 'smooth_db.csv'
OutputFileName = 'smooth_db_filled.csv'

waitingList = []
frameDict = {}
lex_curr = None

with codecs.open(OutputFileName, 'w', 'utf-8-sig') as f_new:
    with codecs.open(InputFileName, 'r', 'utf-8-sig') as f_prev:
        for line in f_prev:
            line = line.strip()
            line = line.split(';')
            lex = line[0]
            frame = line[4]
            if len(lex) > 0:
                #print lex
                if lex_curr != lex and lex_curr != u'-'+lex and lex_curr != lex[1:]:
                    lex_curr = line[0]
                    #print lex_curr
                    frameDict = {}
                string = (';').join(line)
                f_new.write(string + '\r\n')
                frameDict[frame] = lex
                if len(waitingList) > 0:
                    for elem in waitingList:
                        if elem[4] in frameDict:
                            elem[0] = frameDict[elem[4]]
                            f_new.write((';').join(elem)+'\r\n')
                    waitingList = []
            else:
                if frame in frameDict:
                    line[0] = frameDict[frame]
                    f_new.write((';').join(line)+'\r\n')
                else:
                    waitingList.append(line)
