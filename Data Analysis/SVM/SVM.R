DataModel<-function(pima_data){
  
  #Question No.1
  install.packages("e1071", dependencies=TRUE)
  
  library ("e1071")
  
  
  dataset <- pima_data
  colnames(dataset) <- c("Number of times pregnant", "Plasma glucose concentration", "Diastolic blood pressure", "Triceps skin fold thickness", "2-Hour serum insulin","Body mass index","Diabetes Pedigree function","Age","Class")
  
  sizes <- 0.90*nrow(dataset)
  train <- sample(nrow(dataset),size =sizes)
  trainingData <- dataset[train,]
  testData <- dataset[-train,]
  
  model <- svm(Class~., data = trainingData,cost = 100,gamma=1000) 
  summary(model)
  
  prediction <- predict(model, testData[,-9])
  
  conf <- table(pred = prediction, true = testData[,9])
  
  accuracy <-sum(diag(conf))/sum(conf)
  
  accuracy*100
  
  
  #Question No.2
  
  # Linear
  model <- svm(Class~., data = trainingData,type="C-classification", kernel="linear", cost=1) 
  prediction <- fitted(model,testData) 
  conf <- table(prediction, trainingData$Class) 
  conf
  accuracy <-sum(diag(conf))/sum(conf)
  accuracy*100
  
  
  #Polynomial
  model <- svm(Class~., data = trainingData,type="C-classification", kernel="polynomial", cost=1, gamma=0.1) 
  prediction <- fitted(model,testData) 
  conf <- table(prediction, trainingData$Class) 
  conf
  accuracy <-sum(diag(conf))/sum(conf)
  accuracy*100
  
  #Radial Basis
  model <- svm(Class~., data = trainingData,type="C-classification", kernel="radial", cost=1) 
  prediction <- fitted(model,testData) 
  conf <- table(prediction, trainingData$Class) 
  conf
  accuracy <-sum(diag(conf))/sum(conf)
  accuracy*100
  
  
  #Sigmoid
  model <- svm(Class~., data = trainingData,type="C-classification",kernel="sigmoid", cost=1, gamma=0.1) 
  prediction <- fitted(model,testData) 
  conf <- table(prediction, trainingData$Class) 
  conf
  accuracy <-sum(diag(conf))/sum(conf)
  accuracy*100
  
  
  
}

