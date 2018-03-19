# Benjamin Paul Suntrup
# Homework 5
# Dr. Hilgers
# IS&T 5420

# Exercise 1:
# (1)
dbinom(4,20,0.3)

# (2)
sum(dbinom(8:14,20,0.3))

# (3)
sum(dbinom(0:4,20,0.3))
    
# (4)
sum(dbinom(15:20,20,0.3))

# Exercise 2:
f <- function(n,p,a,b) {
  if (p>1 || p<0) stop('p is not between 0 and 1')
  if (n<0) stop('n is less than 0')
  return(sum(dbinom(a:b,n,p)))
}

# Exercise 3:
# X ~ Bin(n,p) => Var(X) = E(X^2) - [EX]^2, where Var(X) = n*p*(1-p) and EX = n*p
# giving E(X^2) = n*p*(1-p) + (n*p)^2
m2 <- function(n,p) {
  if (p>1 || p<0) stop('p is not between 0 and 1')
  if (n<0) stop('n is less than 0')
  return(n*p*(1-p) + (n*p)^2)
}
m2(5,.7)

# Exercise 4:
# The highest value is something that we should all find for ourselves. No one can
# say to another, "This is your highest value." That must be determined by the individual.
# As every man is unique, every man has a unique purpose, and that unique purpose motivates
# a unique highest value in each man.
# 
# As I read, however, I suspect what you MEANT to ask for was the highest value of P(X=x) as
# x ranges over the integers. That is a completely different question. 
max(dbinom(0:10,10,0.8))
max(dbinom(0:11,11,0.8))
max(dbinom(0:10,10,0.8)) - max(dbinom(0:11,11,0.8)) # Compare

# Exercise 5:
h <- function(x,n,p) {
  if (p>1 || p<0) stop('p is not between 0 and 1')
  if (n<0) stop('n is less than 0')
  choose(n, x)*p^x*(1-p)^(n-x) - ((n*p)^x*exp(-n*p))/(factorial(x))
}
n = 500
p = 0.5
doesItWork = TRUE
for (x in c(0:100)){
  if(h(x,n,p) > 0.01) doesItWork = FALSE
}
if (doesItWork) {
  print(cat("Apparently p=",p," and n=",n," are A set of values that work."))
}
