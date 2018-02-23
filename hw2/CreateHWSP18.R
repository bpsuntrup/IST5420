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

# Create the seq:   1,2,3,..,12
1:12
# Create the seq:   1,3,5,...,17
# Create the seq:   2,4,6,8,...,22
# Create the seq:   1,6,11,16,21,26
# Create the seq:   -10,-8,-6...,2,4
# create the vector:  (2,6,-2,7)
# create the vector:  ("a","b","dd","dde")


#######################################  Create Matrices ##
help(matrix)
# Create a vector d using 1,2,...,16
# Create a 4x4 matrix from d
# Create a 2x8 matrix from d
# Create a 1x16 matrix from d
# Create a 16x1 matrix from d
# Create a 4x4 matrix from d with top row 1,2,3,4

#######################################  Vector/Matrix Properties ##
help(length)
help(dim)
help(nrow)
help(ncol)
# Create a vector named v with the value 2,4,6,8,...,22
# What is the length of v
# What is the type of v?
# Add 1 to each element of v.
# Subract 2 from each element of v.
# Create a vector u with values ("a","b","dd","dde").
# What is the type of u?
# What is the length of u?
# Create a 3x4 matrix A from the data seq(-3.3,by=0.5,length.out=12)
# What is is the dimension of A?
# What is the first element in dim(A)?
# What is the number of rows in A?
# How many columns in A are there?


#######################################  Extracting Elements ###
help(Trig,package=base)
help(Extract,package=base)
# Create a vector named x with values 6,3,2.3,-3,112,30-4,16*-2,90-99
# Create a vector named y with values 
#    pi,sin(1.2),exp(-.1),floor(54.3),4:6,-tan(pi/3),round(12.55,0)
# Create a 3x3 matrix A with values 3,1,6,3.4,-5.1,15,32,30.6,67
# Extract the 3 element of x
# Extract elements 1 to 5 from y
# Extract the element in row 2 column 3 of A
# Extract the first column of A
# Extract the second row of A



#######################################  Extremes ###
help(Extremes,package=base)
help(which.max)
# Use x, y, and A as above
# What is the largest element of x?
# What is the smallest element of x?
# What is the largest element of A?
# What is the smallest element of A?
# Which element in y is the largest?
# Which elememt in y is the smallest?
# Which element in A is the largest?
# Which elememt in A is the smallest?




#######################################  Random Values ###
help(sample) 
help(sample.int)
help(Uniform,package=stats)
help(Normal,package=stats)
# Create a vector of integers with the following characteristics
#   Length 4 drawn at random with replacement from 1,2,...,10
#   Length 4 drawn at random  without replacement from 1,2,...,10
#   Length 40 drawn at random with replacement from 1,2,...,10
#   Length 10 drawn at random with replacement from 2,4,6,...,40
#   Length 4 of integers drawn at random with replacement from 1,2,...,10
# Create a vector named x with values 6,3,2.3,-3,112,30-4,16*-2,90-99
# Create a vector v of 50 uniformally distributed random numbers.
# What is the 27 number in the vector?
# How many numbers are greater than 0.2?
# Create a vector w of uniformally distributed random between 2 and 5?
# Create a vector z by extracting all of the elements between 3 and 4?
# How long is z?
# Create a 4x10 matrix B of normally distributed random numbers.
# What is the value of B>0?
# Extract the submatrix of B of strictly positive numbers?


#######################################  Summing ###
help(sum)
help(colSums)
help(rowSums)
# Create a matrix A randomly sampled from 0,1
# What is the sum of each row?
# What is the sum of each column?
# How many ones are there in each column?
# How many zeros are there in each column?
# How many ones are there in the matrix in total?




#######################################  Some handy string stuff ###
help(paste)
help(cat)
help(str_count,package=stringr)
# Join together the strings "I am","doing homework" into a new string s
# What is the value of s?
# Repeat but replace the space separating the two phrases and same to t
# Assign the variable z the value of 2
# Concatenate the string "z =" with the value of z

## It is probably best to write the following statements in script file
##  because they are multipline.

