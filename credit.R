credit<-read.csv(file.choose(),header = TRUE)
table(credit$default)
summary(credit$months_loan_duration)
#dataset preparation
set.seed(123)
train_sample<-sample(1000,900)
str(train_sample)
credit_train<-credit[train_sample,]
credit_test<-credit[-train_sample,]
prop.table(table(credit_train$default))
prop.table(table(credit_test$default))
library(C50)
credit_train$default<-as.factor(credit_train$default)
credit_model<-C5.0(credit_train[-17],credit_train$default)
plot(credit_model)
credit_predict<-predict(credit_model,credit_test)
