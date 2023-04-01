load("C:/Users/egale/OneDrive - Ashesi University/Desktop/Statistics with Probability/IPUMS_NHIS.RData")
vars=c("AGE","SEX","SEXORIEN","EDUC","MAXEDUC","WORFREQ","DEPFEELEVL","WORRX","DEPRX","DEPFREQ","POVLEV","POVERTY")
myData = IPUMS_NHIS[vars]

str(myData)
myData<-as.data.frame(myData)
str(myData)

library(descr)
freq(myData)
freq(myData)

