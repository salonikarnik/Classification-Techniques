DataModel<-function(pima_data){
  
  #Question No. 1
  
  dataset <- pima_data 
  colnames(dataset) <- c(" Number of times pregnant", "Plasma glucose concentration", "Diastolic blood pressure", "Triceps skin fold thickness", "2-Hour serum insulin","Body mass index","Diabetes Pedigree function","Age","Class")
  dataset
  
  hist(dataset$` Number of times pregnant`,main="Histogram for Number of times pregnant",xlab="Number of times pregnant")
  hist(dataset$`Plasma glucose concentration`,main="Histogram for Plasma glucose concentration",xlab="Plasma glucose concentration")
  hist(dataset$`Diastolic blood pressure`,main="Histogram for Diastolic blood pressure",xlab="Diastolic blood pressure (mm Hg)")
  hist(dataset$`Triceps skin fold thickness`,main="Histogram for Triceps skin fold thickness",xlab="Triceps skin fold thickness (mm)")
  hist(dataset$`2-Hour serum insulin`,main="Histogram for 2-Hour serum insulin",xlab="2-Hour serum insulin (mu U/ml)")
  hist(dataset$`Body mass index`,main="Histogram for Body mass index",xlab="Body mass index (weight in kg/(height in m)^2)")
  hist(dataset$`Diabetes Pedigree function`,main="Histogram for Diabetes pedigree function",xlab="Diabetes pedigree function")
  hist(dataset$`Age`,main="Histogram for Age",xlab="Age (years)")
  
  barplot(dataset$` Number of times pregnant`,main="Barplot for Number of times pregnant",xlab="Number of times pregnant")
  barplot(dataset$`Plasma glucose concentration`,main="Barplot for Plasma glucose concentration",xlab="Plasma glucose concentration")
  barplot(dataset$`Diastolic blood pressure`,main="Barplot for Diastolic blood pressure",xlab="Diastolic blood pressure (mm Hg)")
  barplot(dataset$`Triceps skin fold thickness`,main="Barplot for  Triceps skin fold thickness",xlab="Triceps skin fold thickness (mm)")
  barplot(dataset$`2-Hour serum insulin`,main="Barplot for  2-Hour serum insulin",xlab="2-Hour serum insulin (mu U/ml)")
  barplot(dataset$`Body mass index`, main="Barplot for  Body mass index",xlab="Body mass index (weight in kg/(height in m)^2)")
  barplot(dataset$`Diabetes Pedigree function`,main="Barplot for  Diabetes pedigree function",xlab="Diabetes pedigree function")
  barplot(dataset$`Age`,main="Barplot for   Age",xlab="Age (years)")
  
  #Question No. 2
  
  cor(x=dataset$` Number of times pregnant`, y =dataset$Class)
  cor(x=dataset$`Plasma glucose concentration`, y =dataset$Class)
  cor(x=dataset$`Diastolic blood pressure`, y =dataset$Class)
  cor(x=dataset$`Triceps skin fold thickness`, y =dataset$Class)
  cor(x=dataset$`2-Hour serum insulin`, y =dataset$Class)
  cor(x=dataset$`Body mass index`, y =dataset$Class)
  cor(x=dataset$`Diabetes Pedigree function`, y =dataset$Class)
  cor(x=dataset$Age, y =dataset$Class)
  
  #Question No. 3
  
  max <-0
  attributePair1 <-0
  attributePair2 <-0
  
  for (i in 1:8){
    
    for(j in 1:8){
      
      if(i!=j){
        
        z <- cor(x=dataset[[i]], y =dataset[[j]])
        if(z>max){
          
          max <- z
          attributePair1 <-i
          attributePair2 <- j
          
        }
      }
      
      
      
    }
    
  }
  
  #Printing the attribute pair having the highest correlation
  max
  attributePair1
  attributePair2
}
 
  
  