credit<-read.csv(file.choose(),header = TRUE)
obj1<-ggplot(data=credit,aes(x=Age))+geom_histogram(colour="Black",fill="Yellow",bins=10)+theme(panel.background = element_rect(fill="palegreen"))
obj2<-obj1+labs(title="Count of People in different Age group ",x="Age")+theme(plot.title = element_text(hjust = 0.5,face = "bold"))+theme(plot.background = element_rect(fill="paleblue"))
obj<-ggplot(data=credit,aes(x=Sex,col=Sex,fill=Sex))+geom_bar()+labs(title="Plot of Sex",y="Frequency",x="Sex")+theme(panel.background = element_rect("Yellow"))
obj3<-ggplot(data=credit,aes(Job))+geom_bar(aes(fill = as.factor(Job)))+labs(title="Plot of Job Type",x="Levels of Job",y="Frequency")
obj<-obj3+scale_fill_discrete(name="Job Type",labels=c("Unskilled and Non resident","Unskilled and Resident","Skilled","Highly Skilled"))
                                                                                                                                               
house<-ggplot(data=credit,aes(x=Housing,col=Housing,fill=Housing))+geom_bar()+labs(title="Plot of Housing",x="Housing",y="Frequeny")

saving<-ggplot(data=credit,aes(x=Saving.accounts,col=Saving.accounts,fill=Saving.accounts))+geom_bar()+labs(title="Plot for Saving Accounts",x="Saving Accounts",y="Frequency")+theme(plot.background = element_rect(fill="Purple"))

checking<-ggplot(data = credit,aes(x=Checking.account,col=Checking.account,fill=Checking.account))+geom_bar()+labs(title="Plot for Checking Accounts",x="Checking Accounts",y="Frequency")

edit<-hist(credit$Credit.amount,main = "Histogram of Credit Amount",xlab = "Credit amount",ylab = "Frequency",col="palegreen4",border = "black")
redit<-hist(credit$Credit.amount, main = "Histogram of Credit Amount", xlab = "Credit Amount", ylab = "Frequency", col = "green", border = "black" )

purpose<-ggplot(data = credit,aes(x=Purpose,fill=Purpose,col=Purpose))+geom_bar()+labs(title="purpose of the loan",x="Purpose",y="Frequency")+theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())
duration<-ggplot(data=credit,aes(x=Duration))+geom_histogram(bins =10 ,fill="green",colour="blue")+labs(title="Plot of Duration of Loan",x="Duration in Months",y="Frequency")
