# Homework 5
# Benjamin Paul Suntrup

# Exercise 1
curve(sinh(x), -5, 5)

# Exercise 2
f<-function(x)
{
  sin(x)
}
g<-function(x)
{
  sin(3*x-2)
}
p1 <- ggplot(data.frame(prob = c(-5, 5)), aes(prob))
p1 + stat_function(fun = f,color="red") +
  stat_function(fun = g,color="blue")

# Exercise 3
L <- function(x,a,b) {
  exp(a*x+b)/(1+exp(a*x+b))
}
p2 <- ggplot(data.frame(prob = c(-5, 5)), aes(prob))
p2 + stat_function(fun = L,color="red",args=list(a=1,b=-1)) +
  stat_function(fun = L,color="blue",args=list(a=1,b=0)) +
  stat_function(fun = L,color="green",args=list(a=1,b=1))

# Exercise 4
p3 <- ggplot(data.frame(prob = c(-5, 5)), aes(prob))
p3 + stat_function(fun = L,color="red",args=list(a=0,b=1)) +
  stat_function(fun = L,color="blue",args=list(a=5,b=1)) +
  stat_function(fun = L,color="green",args=list(a=1,b=1))

# Exercise 5
require(graphics)
x <- 0:10
h<-dbinom(x, size = 10, prob = 0.7) 
mydf<-data.frame(x = x,y=h)
ggplot(mydf, aes(x, y)) +
  geom_segment(aes(xend = x, yend = 0), size = 2, lineend = "butt")





