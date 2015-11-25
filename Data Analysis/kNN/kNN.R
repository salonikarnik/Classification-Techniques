DataModel<-function(pima_data){
  install.packages("class",dependencies = TRUE)
  install.packages("caret",dependencies = TRUE)
  library(class)
  library(caret)
  
  # Question No. IV:kNN
  
  dataset <- pima_data
  colnames(dataset) <- c("Number of times pregnant", "Plasma glucose concentration", "Diastolic blood pressure", "Triceps skin fold thickness", "2-Hour serum insulin","Body mass index","Diabetes Pedigree function","Age","Class")
  
  sizes <- 0.9*nrow(dataset)
  train <- sample(nrow(dataset),size=sizes)
  trainingData <- dataset[train,]
  testData <- dataset[-train,]
  
  pred <- knn(train=trainingData, test=testData, cl=as.factor(trainingData[['Class']]), k=3,prob = FALSE, use.all = TRUE)
  pred2 <- knn(train=trainingData, test=testData, cl=as.factor(trainingData[['Class']]), k=5,prob = FALSE, use.all = TRUE)
  pred3 <- knn(train=trainingData, test=testData, cl=as.factor(trainingData[['Class']]), k=7,prob = FALSE, use.all = TRUE)
  pred4 <- knn(train=trainingData, test=testData, cl=as.factor(trainingData[['Class']]), k=9,prob = FALSE, use.all = TRUE)
  pred5 <- knn(train=trainingData, test=testData, cl=as.factor(trainingData[['Class']]), k=11,prob = FALSE, use.all = TRUE)
  
  cl <- as.factor(trainingData[['Class']])
  
  conf <- confusionMatrix(pred, testData[,9])
  conf$overall[1]*100
  
  conf <- confusionMatrix(pred2, testData[,9])
  conf$overall[1]*100
  
  conf <- confusionMatrix(pred3, testData[,9])
  conf$overall[1]*100
  
  conf <- confusionMatrix(pred4, testData[,9])
  conf$overall[1]*100
  
  conf <- confusionMatrix(pred5, testData[,9])
  conf$overall[1]*100
  
  
  
  
}

