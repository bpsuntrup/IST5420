# I think I found this at https://onlinecourses.science.psu.edu/stat504/node/207
# All credit for this is due to them


#### Some basic BINOMIAL Calculations
#### 
#### How to obtain a sequence from 0 to 10:

0:10

############ First Example ##############################
#### Calculate p(x) for X=0,1,...,10 when N=10 and pi=0.5
#### dbinom() is the binomial probability function or "density"
####### for x=1 ############################

dbinom(1, 10, 0.5)

#### for x=1, 2, ...., 10 

dbinom(0:10, 10, 0.5)

#### Make a table of the distribution, rounding values to 4th decimal place:

t<-round( cbind(0:10, dbinom(0:10, 10, 0.5)), 4)  #Yeilds a Matrux
t

class(t)
tt<-as.table(t)     # table
str(tt)
tt

## function for P[X <= k]
DistributionFunction<-function(p,k,n)
{
  z<- dbinom(0:k, size=n, prob=p, log = FALSE)
  sum(z)
}

# n=10 and pi=0.8 and k=4
DistributionFunction(p=0.8,4,10)

## Compare to the distribution function


######### Eample plotting
# Binomial(11,0.5)
tdf<-data_frame(x=0:10, Freq=round(dbinom(0:10, 10, 0.5),digits = 4))   # data frame
tdf
str(tdf)
##  plot with ggplot2 method
ggplot(tdf, aes(x, Freq)) +
  geom_segment(aes(xend = x, yend = 0), size = 2, lineend = "butt", color="red") 

# Binomial(11,0.2)
tdf<-data_frame(x=0:10, Freq=round(dbinom(0:10, 10, 0.2),digits = 4))   # data frame
tdf
str(tdf)
##  plot with ggplot2 method
ggplot(tdf, aes(x, Freq)) +
  geom_segment(aes(xend = x, yend = 0), size = 2, lineend = "butt")





