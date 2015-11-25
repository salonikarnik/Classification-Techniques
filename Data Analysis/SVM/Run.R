args <- commandArgs(TRUE)
pima_path <- toString(args[1])
pima_data = read.csv(pima_path)

source("SVM.R")

DataModel(pima_data)