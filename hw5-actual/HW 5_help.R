##
##
##  Here is more help on the assignment.  Please note that I have supplied you with an
##  example of everything I have asked you to do.  This is in the file called Plotting.R.
##  You do not need to go to google immediately.  Dig thru the notes and examples I have given 
##  you.  I am sorry that I don't always have the chance to go over everything in class, but I have 
##  tried to support you with examples.




## Excercise 3 ##
## In this problem, you must define a function which has parameters, you must use 
##  the args parameter in stat_function, and you need to plot more than one function 
##  on the same set of axes. 
##  Here is what I gave you:

##===========Example I provided in Plotting.R======================
##   
## Create a user defined function to calculate the log likelihood
loglk<-function(k,n,prob)
{
  z<- dbinom(x=k, size=n, prob, log = FALSE)
  log(z)
}

## Important:  Notice the use of the args list!!
f <- ggplot(data.frame(prob = c(0.01, 0.99)), aes(prob))
f + stat_function(fun = loglk,color="red",args=list(k=5,n=10)) +
  stat_function(fun = loglk,color="blue",args=list(k=8,n=10))

##================Partial Solution to Exercise #=====
##
##
##  This is a "partial solution" because I plot only two of the three
##  functions.  You must complete it.
##
###
##  This is an example of the setup needed to perform parametric analysis 
##  on a function.  When doing parametric analysis, a and b must be fixed and
##  x is vector of the indepentdent variables.  

likelihood <- function(x,a,b) {exp(a*x+b)/(1+exp(a*x+b))}

##
## In the plot basis, we define x by making it a column in the data frame we pass
## to ggplot.  
##
parametricPlot <- ggplot(data.frame(x = c(-5,5)), aes(x))

##
##  We use the fun=likelihood to identify the function we want to plot.  R will try to 
##  match the arg list of likelihood to columns in the data frame.  In this case,
##  likelihood has a parameter named x and so does the data frame. 
##  The problem is that ggplot2 allows you to identify only the independent variable
##  in this setting.  The values of our parameters must be past thru the 
##  args list:  
##               args=list(a=1,b=-1)
##
parametricPlot + stat_function(fun = likelihood,args=list(a=1,b=-1),colour="black")+
  stat_function(fun = likelihood,args=list(a=1,b=0),colour="red") 
  

## We perform the comparative parametric analysis by plotting severfal
##  functions systematically varying only one parameter.

##==================Exercise 4==================================

## Identical to Exercise 3 except you are varying the parameters in a 
##  different way.


##============= Exercise 5===============================
##
## Once again I have not yet presented in class an example in class; however, I have 
##  supplied an example in the Plotting.R file.

##===========Example I provided in Plotting.R======================
##
## Line segment Plots for discrete probability distributions
##

## We must use the geom_segment layer.  To plot a segment we must supply where the
##  segment will be placed in terms of x,y coordinates.  We do this with the
##
##               xend=x
##
##  where x=0:11 is given values in the previous line.  We want to stack the segments on the
##   x-axis which is the y=0 line.  Hence the line segments will have base coordinates
##
##    (0,0), (1,0), (2,0), ...
##
##  
##  Next we must specify the top of the segement.  In this case we do so in the aes(x=x,y=h)
##    parameter in the ggplot.
##
##  So what is h?  It is the value of the density of the negative binomial distribution
##  x.  This is done with the statement
##
##    h <-h<-dnbinom(x, size = 1, prob = 1/2) 
##
##  Here is the arg list for the negative binomial distribution.  
##
##  dnbinom(x, size, prob, mu, log = FALSE)

##  (I want to point out  that "size" may be the poorest named parameter in R.  It has a completely different than
##     meaning for the binomial distribution. Furthermore, it does not measure the size of anything.  I just
##     used 1. Likewise x is define as a quantile.  I have looked into the definition for
##     quantile for several discrete distributions.  You must calculate the incomplete gamma function
##     and the incomplete beta function which is approximated using continued fractions.  This
##     is a "bit" out of league.  That is why sometimes I struggle with expressing concepts
##     in class because most of us don't have even the vocabulary needed.)
#
##    
##   
##  Negative binomial distrubtion
require(graphics)
x <- 0:11
h<-dnbinom(x, size = 1, prob = 1/2) 

mydf<-data.frame(x = x,y=h)
ggplot(mydf, aes(x, y)) +
  geom_segment(aes(xend = x, yend = 0), size = 2, lineend = "butt")
##
##
##  For your problem you will replace the use of dnbinom with dbinow.
##
##   Hope this helps!!!!
##
