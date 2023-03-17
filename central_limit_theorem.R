### Simulation for p-hat ###

# Randomly select 200 samples of size n from a binomial
# distribution with a probability of success = 0.783
m <- 200
p <- 0.783

# sample size is n = 10
# result is a vector p_hat holding the proportion success
# for each of the 200 trials
n <- 10
p_hat <- rbinom(m,n,p)/n
hist(p_hat,xlim=c(0,1),main="n=10",xlab="p_hat")
mean(p_hat)
sd(p_hat)

n <- 20
p_hat <- rbinom(m,n,p)/n
hist(p_hat,xlim=c(0,1),main="n=20",xlab="p_hat")
mean(p_hat)
sd(p_hat)

n <- 100
p_hat <- rbinom(m,n,p)/n
hist(p_hat,xlim=c(0,1),main="n=100",xlab="p_hat")
mean(p_hat)
sd(p_hat)

# Example 1
n=1000
p=0.658
qnorm(0.025,p,sqrt(p*(1-p)/n))
qnorm(0.975,p,sqrt(p*(1-p)/n))

### Simulation for x-bar ###

# Data is a POPULATION of 800 US pennies collected from a bank in 2011, 
# source: statcrunch.com

#pennies <- read.delim("C:/Users/rawuah/OD/Statistics/Weekly Lessons and Assignments/Week 7/pennies.txt")

hist(pennies$Age,xlim=c(0,70),col="lightblue", main="Ages of a Population of Pennies",xlab="years")
mean(pennies$Age)
sd(pennies$Age)

#take 100 repeated samples of size n=5 from the population
x_bar <- c()

for(i in 1:100) {x_bar[i]=mean(sample(pennies$Age,5))}

hist(x_bar,xlim=c(0,70),main="100 samples of size n=5",xlab="x-bar (mean age of pennies)")
mean(x_bar)
sd(x_bar)

#take 100 repeated samples of size n=20 from the population
x_bar <- c()

for(i in 1:100) {x_bar[i]=mean(sample(pennies$Age,20))}

hist(x_bar,xlim=c(0,70),main="100 samples of size n=20",xlab="x-bar (mean age of pennies)")
mean(x_bar)
sd(x_bar)

#take 100 repeated samples of size n=40 from the population
x_bar<-c()

for(i in 1:100) {x_bar[i]=mean(sample(pennies$Age,40))}
hist(x_bar,xlim=c(0,70),main="100 samples of size n=40",xlab="x-bar (mean age of pennies)")
mean(x_bar)
sd(x_bar)


#Example 2
n<-60
m<-(6+12)/2;m
s<-((12-6)/sqrt(12))/sqrt(n);s

qnorm(0.025,9,s)
qnorm(0.975,9,s)

# Example 3
1-pnorm(406,400,4)
1-pnorm(406,400,4/sqrt(20))


# Binomial probabilities
# Find P(X>=6) or P(X>5)
1 - pbinom(5,11,0.17)
