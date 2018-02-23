##
##  NAME:
##
###########################################################  
##  ASSIGNMENT: Creating numerical data
##
##  DUE DATE: 2/21/18
##  
##  VALUE: 100 points
##
##  Instructions:  
##     1) Please enter your name.
##     2) Save this file with your name in the file name.
##     3) Underneath each question (or command), please 
##         supply the appropriate R commands.
##     4) If you find it easier to write, you may
##         submit another file of multiline statements
##         like functions.
##
##  Comments:
##      1) I have included help commands.  I expect you to
##         use this material to complete the assignment.
##
##  Submission:  
##     1) Upload this file and any other required scripts into
##        into Canvas
########################################################







#######################################  Creating Vectors ###
help(seq)
help(":")
help("c")
# Create the seq:   1,2,3
1:3

# Create the seq:   1,2,3,..,12
1:12
# Create the seq:   1,3,5,...,17
seq(from=1,to=17,by=2)
# Create the seq:   2,4,6,8,...,22
seq(from=2,to=22,by=2)
# Create the seq:   1,6,11,16,21,26
seq(from=1,to=26,by=5)
# Create the seq:   -10,-8,-6...,2,4
seq(from=-10,to=4,by=2)
# create the vector:  (2,6,-2,7)
c(2,6,-2,7)
# create the vector:  ("a","b","dd","dde")
c("a","b","dd","dde")

#######################################  Create Matrices ##
help(matrix)
# Create a vector d using 1,2,...,16
d <- c(1:16)
# Create a 4x4 matrix from d
matrix(data = d, nrow = 4, ncol = 4, byrow = FALSE, dimnames = NULL)
# Create a 2x8 matrix from d
matrix(data = d, nrow = 2, ncol = 8, byrow = FALSE, dimnames = NULL)
# Create a 1x16 matrix from d
matrix(data = d, nrow = 1, ncol = 16, byrow = FALSE, dimnames = NULL)
# Create a 16x1 matrix from d
matrix(data = d, nrow = 16, ncol = 1, byrow = FALSE, dimnames = NULL)
# Create a 4x4 matrix from d with top row 1,2,3,4
matrix(data = d, nrow = 4, ncol = 4, byrow = TRUE, dimnames = NULL)

#######################################  Vector/Matrix Properties ##
help(length)
help(dim)
help(nrow)
help(ncol)
# Create a vector named v with the value 2,4,6,8,...,22
v<-c(seq(from=2,to=22,by=2))
# What is the length of v
length(v)
# What is the type of v?
typeof(v)
# Add 1 to each element of v.
v + 1
# Subract 2 from each element of v.
v - 2
# Create a vector u with values ("a","b","dd","dde").
u <- c("a","b","dd","dde")
# What is the type of u?
typeof(u)
# What is the length of u?
length(u)
# Create a 3x4 matrix A from the data seq(-3.3,by=0.5,length.out=12)
A <- matrix(data=seq(-3.3,by=0.5,length.out=12), nrow=3,ncol=4)
# What is is the dimension of A?
dim(A)
# What is the first element in dim(A)?
dim(A)[1]
# What is the number of rows in A?
nrow(A)
# How many columns in A are there?
ncol(A)

#######################################  Extracting Elements ###
help(Trig,package=base)
help(Extract,package=base)
# Create a vector named x with values 6,3,2.3,-3,112,30-4,16*-2,90-99
x <- c(6,3,2.3,-3,112,30-4,16*-2,90-99)
# Create a vector named y with values 
#    pi,sin(1.2),exp(-.1),floor(54.3),4:6,-tan(pi/3),round(12.55,0)
y <- c(pi,sin(1.2),exp(-.1),floor(54.3),4:6,-tan(pi/3),round(12.55,0))
# Create a 3x3 matrix A with values 3,1,6,3.4,-5.1,15,32,30.6,67
A <- matrix(data=c(3,1,6,3.4,-5.1,15,32,30.6,67),nrow=3,ncol=3)
# Extract the 3 element of x
x[3]
# Extract elements 1 to 5 from y
y[1:5]
# Extract the element in row 2 column 3 of A
A[2,3]
# Extract the first column of A
A[,1]
# Extract the second row of A
A[2,]


#######################################  Extremes ###
help(Extremes,package=base)
help(which.max)
# Use x, y, and A as above
# What is the largest element of x?
max(x)
# What is the smallest element of x?
min(x)
# What is the largest element of A?
max(A)
# What is the smallest element of A?
min(A)
# Which element in y is the largest?
which.max(y)
# Which elememt in y is the smallest?
which.min(y)
# Which element in A is the largest?
which.max(A)
# Which elememt in A is the smallest?
which.min(A)



#######################################  Random Values ###
help(sample) 
help(sample.int)
help(Uniform,package=stats)
help(Normal,package=stats)
# Create a vector of integers with the following characteristics
#   Length 4 drawn at random with replacement from 1,2,...,10
sample(1:10, 4, replace = TRUE, prob = NULL)
#   Length 4 drawn at random  without replacement from 1,2,...,10
sample(1:10, 4, replace = FALSE, prob = NULL)
#   Length 40 drawn at random with replacement from 1,2,...,10
sample(1:10, 40, replace = TRUE, prob = NULL)
#   Length 10 drawn at random with replacement from 2,4,6,...,40
sample(seq(from=2,to=40,by=2), 10, replace = TRUE, prob = NULL)
#   Length 4 of integers drawn at random with replacement from 1,2,...,10
sample.int(10,4,replace=TRUE)
# Create a vector named x with values 6,3,2.3,-3,112,30-4,16*-2,90-99
x <- c(6,3,2.3,-3,112,30-4,16*-2,90-99)
# Create a vector v of 50 uniformally distributed random numbers.
v <- runif(50)
# What is the 27 number in the vector?
v[27]
# How many numbers are greater than 0.2?
# uncountably many... but restricted to v we get
length(which(v > 0.2))
# Create a vector w of 1337 uniformally distributed random between 2 and 5.
w <- runif(1337,min=2,max=5)
# Create a vector z by extracting all of the elements between 3 and 4.
z <- w[which(w < 4)][which(w[which(w < 4)] > 3)]
# How long is z?
length(z)
# Create a 4x10 matrix B of normally distributed random numbers.
B <- matrix(data=rnorm(40,mean=65,sd=.5),nrow=4,ncol=10)
# What is the value of B>0?
B>0
# Extract the submatrix of B of strictly positive numbers.
B[B>0] # Not really a submatrix, but I think is what you were asking for


#######################################  Summing ###
help(sum)
help(colSums)
help(rowSums)
# Create a matrix A randomly sampled from 0,1
A <- matrix(data=sample(0:1,81,replace=TRUE), nrow=9,ncol=9)
# What is the sum of each row?
rowSums(A)
# What is the sum of each column?
colSums(A)
# How many ones are there in each column?
colSums(A == 1)
# How many zeros are there in each column?
colSums(A == 0)
# How many ones are there in the matrix in total?
sum(A == 1)

#######################################  Some handy string stuff ###
help(paste)
help(cat)
help(str_count,package=stringr)
# Join together the strings "I am","doing homework" into a new string s
s <- cat("I am","doing homework")
# What is the value of s?
s
# Repeat but replace the space separating the two phrases and same to t
s <- cat("I am","doing homework", file = "", sep = "t", fill = FALSE, labels = NULL,
         append = FALSE)
# Assign the variable z the value of 2
z <- 2
# Concatenate the string "z =" with the value of z
cat("z = ", z)
## It is probably best to write the following statements in script file
##  because they are multipline.

