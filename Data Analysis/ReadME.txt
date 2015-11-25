Name: Saloni Karnik
Net-id: suk140030


To run the program,go to the command prompt and enter:

Rscript Run.R filename

Eg. Rscript Run.R Pima_dataset.data

Each folder contains a Run.R script file. This file is present in 4 folders,for running the scripts in each of the 4 folders. There are 4 folders:
Exploratory Data Analysis, SVM,Naive Bayesian,kNN

The accuracy report for each classifer is present in the 3 files while the plots for the 1st question are present are present in the Exploratory Data Analysis Folder.

Packages used:
kNN: caret,class
Naive Bayesian : klaR,caret
SVM:e1071


After taking a look at the accuracy reports for all classifiers, the SVM kernel, having it set to radial basis and polynomial works the best for this Pima dataset.