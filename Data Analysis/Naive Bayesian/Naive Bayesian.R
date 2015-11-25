DataModel<-function(pima_data){
  
  #Question No. 1
  install.packages("klaR")
  install.packages("caret")
  library("klaR")
  library("caret")
  
  # Question No. 2:Naive Bayesian
  
  dataset <- pima_data
  colnames(dataset) <- c("Number of times pregnant", "Plasma glucose concentration", "Diastolic blood pressure", "Triceps skin fold thickness", "2-Hour serum insulin","Body mass index","Diabetes Pedigree function","Age","Class")
  
  sizes <- 0.90*nrow(dataset)
  train <- sample(nrow(dataset),size =sizes)
  trainingData <- dataset[train,]
  testData <- dataset[-train,]
  
  
  model <- naiveBayes(as.factor(Class) ~ ., data = dataset) 
  model
  prediction <- predict(model, testData)
  prediction
  
  #Question No.3
  tab <- table(prediction, testData$Class)            
  tab
  accuracy <- sum(diag(tab))/sum(tab)
  accuracy*100
  
}


  