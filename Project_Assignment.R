load("C:/Users/egale/OneDrive - Ashesi University/Desktop/Statistics with Probability/IPUMS_NHIS.RData")
vars=c('SEXORIEN','EDUC','MAXEDUC','DEPFEELEVL','DEPRX','DEPFREO','POVLEVEL')
myData <- IPUMS_NHIS[vars]