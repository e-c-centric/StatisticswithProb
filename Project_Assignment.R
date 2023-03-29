load("C:/Users/egale/OneDrive - Ashesi University/Desktop/Statistics with Probability/IPUMS_NHIS.RData")
vars=c("AGE","SEX","SEXORIEN","EDUC","MAXEDUC","WORFREQ","DEPFEELEVL","WORRX","DEPRX","DEPFREQ","POVLEV","POVERTY")
myData = IPUMS_NHIS[vars]

str(myData)
myData<-as.data.frame(myData)
str(myData)

library(descr)
freq(myData)
freq(myData)

myGhanaData$Q78A_GHA<-as.numeric(myGhanaData$Q78A_GHA)
hist(myGhanaData$Q78A_GHA, col="hotpink")

myGhanaData$Q95A<-as.numeric(myGhanaData$Q95A)
hist(myGhanaData$Q95A, col="hotpink")
#"WORKFEELEVL",