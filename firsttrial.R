Names = c('Elikem','Not-Elikem','Asudo','Tsatsu','Gale-Zoyiku')
Age=c(19,2,21,30,5)
Gender=c('Male','Female','Non-binary','Male','Female')
Height=c(1.77,1.66,1.8,1.8,2.0)
Merger=Age*Height
Student_Records=data.frame(Names,Age,Gender,Height,Merger)
load("C:\\Users\\egale\\OneDrive - Ashesi University\\Desktop\\Statistics with Probability\\Oscar2013.RData")
View(Oscar2013)
actor_age
summary(actor_age$Age)
sd(actor_age$Age)
var(actor_age$Age)
length(actor_age$Age)
quantile(actor_age$Age, 0.5)
summary(grad_data)
boxplot(grad_data)
boxplot(grad_data, xlab="Colleges",ylab ="Graduation Rates", main="Comparison of Graduation Rates")
boxplot(grad_data, horizontal=TRUE, ylab="Colleges",xlab ="Graduation Rates", main="Comparison of Graduation Rates")
sapply(ratings, sd)
hist(data$Alcohol)
summary(data$Alcohol)
tbl=table(data$Cheat);tbl
100*tbl/sum(tbl)
pie(tbl)
t = table(nightlight);t
prop.table(t,1)
prop.table(t,2)
prop.table(t,1)*100
plot(h$height,h$weight)
plot(h$height,h$weight, xlab="Height (inches)", ylab="Weight (lbs)")
plot(h$height,h$weight, xlab="Height (inches)", ylab="Weight (lbs)")
points(h$height[h$gender==1],h$weight[h$gender==1],col="red")
plot(h$height,h$weight, xlab="Height (inches)", ylab="Weight (lbs)",col="blue")
points(h$height[h$gender==1],h$weight[h$gender==1],col="red")
points(h$height[h$gender==1],h$weight[h$gender==1],col="red")
legend(55,225, pch=1, col=c("red","blue"),legend=c("females","males"))
plot(data$HS_GPA, data$GPA)
cor(data$HS_GPA, data$GPA, use='c')
L=lm(data$GPA~data$HS_GPA);
abline(L);
cf=coefficients(L);
lt=paste("GPA = ",round(cf[1],2),"+",round(cf[2],2),"HS_GPA")
legend(1.7,4.3,lt)

random_sample = population[sample(length(population$Course),192),];random_sample
random_sample_percent = 100*prop.table(table(random_sample$Handed));random_sample_percent
pop_percent = 100*prop.table(table(population$Handed));pop_percent
barplot(rbind(pop_percent,random_sample_percent), beside=T, col=c(0,1),legend.text=T,xlab="Handedness",ylab="Percent in Group",args.legend=list(x="topleft"))
random_sample_percent = 100*summary(random_sample$Handed)/length(random_sample$Handed);random_sample_percent; pop_percent = 100*summary(population$Handed)/length(population $Handed);pop_percent; par(mfrow=c(1,2)); pie(pop_percent,labels=paste(c("left=","right="),round(pop_percent,0),"%"),main="Population"); pie(random_sample_percent,labels=paste(c("left=","right="),round(random_sample_percent,0),"%"),main="Random Sample")

random_sample_percent = 100*prop.table(table(random_sample$Sex));random_sample_percent
pop_percent = 100*prop.table(table(population$Sex));pop_percent
barplot(rbind(pop_percent,random_sample_percent), beside=T, col=c(0,1),legend.text=T,xlab="Handedness",ylab="Percent in Group",args.legend=list(x="topleft"))
random_sample_percent = 100*summary(random_sample$Sex)/length(random_sample$Sex);random_sample_percent; pop_percent = 100*summary(population$Sex)/length(population $Sex);pop_percent; par(mfrow=c(1,2)); pie(pop_percent,labels=paste(c("female=","male="),round(pop_percent,0),"%"),main="Population"); pie(random_sample_percent,labels=paste(c("female=","male="),round(random_sample_percent,0),"%"),main="Random Sample")

summary(population$Verbal)
summary(random_sample$Verbal)

summary(population$Age)
summary(random_sample$Age)
x=birthweight$birthweight
C=0.99
z=qnorm((1+C)/2)
sigma=500
n=length(x)
xbar=mean(x)
xbar-z*(sigma/sqrt(n))
xbar+z*(sigma/sqrt(n))
n=length(support$opinion);n
t=table(support$opinion);t
prop.test(t[1],n,conf.level=0.95)
prop.test(t[2],n,conf.level=0.95)$conf.int
hist(data$Verbal)
summary(data$Verbal)
z = (mean(na.omit(data$Verbal)) - 580) / (111/sqrt(length(na.omit(data$Verbal)))); z
pnorm(z)
pnorm(z, lower.tail=FALSE)
2*pnorm(abs(z), lower.tail=FALSE)
lower=qnorm(0.025, mean=596.7, sd=111/sqrt(286)); lower
upper=qnorm(0.975, mean=596.7, sd=111/sqrt(286)); upper
tbl = table(data$Cell); tbl
100*tbl/sum(tbl)
pie(tbl)
summary(data$Cell)
n = length(na.omit(data$Cell)); n
np = length(na.omit(data$Cell[data$Cell == "yes"])); np
np = length(na.omit(data$Cell[data$Cell == "no"])); np
prop.test(np, n, 0.8, alternative = "less", correct=FALSE)
hist(data$Sleep)
summary(data$Sleep)
