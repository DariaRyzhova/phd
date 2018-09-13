# encoding: utf-8

import re

def translit(line):
    dict = {}
    cyrillic = [u'а', u'б', u'в', u'г', u'д', u'е', u'ё', u'ж',
               u'з', u'и', u'й', u'к', u'л', u'м', u'н', u'о',
               u'п', u'р', u'с', u'т', u'у', u'ф', u'х', u'ц',
               u'ч', u'ш', u'щ', u'ъ', u'ы', u'ь', u'э', u'ю', u'я']
    roman = ['a', 'b', 'v', 'g', 'd', 'je', 'je', 'zh',
             'z', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'r',
             's', 't', 'u', 'f', 'h', 'ts', 'ch', 'sh', 'sh\'',
             '\"', 'y', '\'', 'e', 'ju', 'ja']
    for i in range(len(cyrillic)):
        cyrillic[i] = cyrillic[i].encode('utf-8')
        dict[cyrillic[i]] = roman[i]
    for char in dict:
        #line = line.decode('cp1251')
        #line = line.encode('utf-8')
        line = line.replace(char, dict[char])
    return line
