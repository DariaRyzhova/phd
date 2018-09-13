# encoding: utf-8

TypDmFile = '../Typological data preparation/smooth.dm'
TypRowsFile = '../Typological data preparation/smooth.rows'
DistrDmFile = 'spaces/smooth_words.dm'
DistrRowsFile = 'spaces/smooth_words.rows'
itemsFile = '../Typological data preparation/smooth_phrases.txt'

from composes.semantic_space.space import Space
from composes.utils import io_utils
from composes.utils import scoring_utils
from composes.similarity.cos import CosSimilarity
from composes.transformation.scaling.plog_weighting import PlogWeighting
from composes.transformation.scaling.epmi_weighting import EpmiWeighting
from composes.transformation.scaling.ppmi_weighting import PpmiWeighting
from composes.transformation.scaling.plmi_weighting import PlmiWeighting
from composes.composition.weighted_additive import WeightedAdditive
from composes.transformation.dim_reduction.svd import Svd

def create_space(dmFile, rowsFile):
    space = Space.build(data = dmFile,
                       rows = rowsFile,
                       format = "dm")
    return space

def items_from_file(filename):
    items = []
    with open(filename, 'r') as f_items:
        for line in f_items:
            items.append(line.strip())
    return items

def pairs(items):
    pairs = []
    for item_x in items:
        for item_y in items:
            if item_x != item_y and [item_x, item_y] not in pairs and [item_y, item_x] not in pairs:
                pairs.append([item_x, item_y])
    return pairs

def elements_for_composition(items):
    els_for_comp = []
    for item in items:
        item = item.split('_')
        element = (item[0], item[1], item[0] + '_' + item[1])
        els_for_comp.append(element)        
    return els_for_comp

typ_space = create_space(TypDmFile, TypRowsFile)
distr_space = create_space(DistrDmFile, DistrRowsFile)

#load a space from a pickle file
#my_space = io_utils.load("./sharp/lexfunc/lexfunc_Ridge_pract.pkl")

#distributional vectors processing
distr_space = distr_space.apply(PpmiWeighting())
distr_space = distr_space.apply(Svd(300))
#io_utils.save(distr_space, "./spaces/smooth_phrases_ppmi.pkl")

items = items_from_file(itemsFile)
els_for_comp = elements_for_composition(items)

my_comp = WeightedAdditive(alpha = 1, beta = 1)
distr_space = my_comp.compose(els_for_comp, distr_space)

pairs = pairs(items)

predicted = distr_space.get_sims(pairs, CosSimilarity())
gold = typ_space.get_sims(pairs, CosSimilarity())

#compute correlations
print "Spearman"
print scoring_utils.score(gold, predicted, "spearman")
print "Pearson"
print scoring_utils.score(gold, predicted, "pearson")