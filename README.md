# phd
Python codes created in the course of my phd research on computational methods in lexical typology.
September 2018

The toolkits applied:
Dissect: http://clic.cimec.unitn.it/composes/toolkit/
Cluto: http://glaros.dtc.umn.edu/gkhome/cluto/cluto/overview
SciPy: http://docs.scipy.org
Scikit-learn: http://scikit-learn.org/stable/index.html

GENERAL STRUCTURE:
	
Chapter 1: Verification of the notion of frame
	Typological data preparation
	Distributional data preparation (includes data comparison)
	
Chapter 2: Questionnaire construction
	Creating a list of frequent collocations for the lexemes of the domain
	Preparing a vector space (see Distributional data preparation in Ch.1)
	Clustering of the vector space: cluto, scikit and scipy
	Extracting core elements from every cluster (random choice and centroids)
	Evaluating the results