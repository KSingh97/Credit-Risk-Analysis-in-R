credit<-read.csv("credit.csv")
credit1<-read.csv("credit1.csv")
set.seed(123)
c<-1:1000
train_sample<-sample(c,900)
credit_train<-credit1[train_sample,]
credit_test<-credit1[-train_sample,]
prop.table(table(credit_train$default))
prop.table(table(credit_test$default))
CONVERT<-function(x){ x1<-ifelse(x==1,"No","Yes") }
K<-CONVERT(credit_train$default)
credit_train$default<-as.factor(credit_train$default)
credit_model<-C5.0(credit_train[-17],credit_train$default)
summary(credit_model)
p<-predict(credit_model,credit_test)
library(gmodels)
CrossTable(credit_test$default,p,prop.chisq = FALSE,prop.c = FALSE,prop.r = FALSE,dnn=c('actual','predicted'))
