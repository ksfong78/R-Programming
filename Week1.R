# 1) week 1- Objects and attributes

##OBJECTS
#VECTORS may be of different classes of objects
#vector hcan only contain the same class, cannot mix classes
#List can mix classes

## NUMBERS
# 1 will be recognized as numeric, 1L will tell is integer
#Inf - represents infinity
#NaN - represents "not a numeric

##ATTRIBUTES
# names, dimnames
# dimensions 
# class
# length
# other user-defined attributes/metadata
#attributes of an object can be accessed using the attributes() function


# 2) week 1- Vectors and List
x <- c(0.5, 0.6) ## numeric
x <- c(TRUE,FALSE) ## logical
x <-c (T,F) ## Logical
x <- c("a", "b", "c") ## character
x <- 9:20 ## integer
x <- c(1+oi, 2+4i) ##complex

##using the vector() function
x <-vector("numeric", length = 10)
x

## mixing objects
y <-c(1.7, "a") # not same class, one is numerical and other is character, least common is character will change to character
y <- c(TRUE, 2)  # Numeric is the least common. Vector will be converted to numeric
y <-c ("a", TRUE) # convert to character

x <- 0:6 #create integer
class(x) # check the class of the object
as.numeric(x) #convert to numeric
as.logical(x) #conver to logical
as.character(x) # convert to complex

x <- c("a", "b", "c") 
as.numeric(x) # cannot convert to numeric, will reurtn NA NA NA
as.logical(x) #also cannot convert to logical, return NA

as.complex(x) ?????
  
#LIST
x<- list(1, "a", TRUE, 1+4i)  # can mix object class into list
x #list will show in double brackets!

# 3) week 1 - Data Types - Matrices

m <- matrix(nrow =2, ncol=3) #Create a matrix by specifying no. of rows and columns
dim(m) #returns the dimension of the matrix
attributes(m)

m <-matrix(1:6, nrow=2, ncol =3) # create matrix using vector 1:6 by filling up first column, follow by the 2nd and 3rd and so on


m <- 1:10 # first create a vector
m
dim (m)<- c(2,5) #take the vector and convert into a matrix with 2 rows and 5 columns
m

x <- 1:3  # create two vectors
y <-10:12
cbind(x,y) #cbind will fill up the matrix using x into the first column and y into the second column
rbind(x,y) #rbind will fille up x into first row and y into second rowx <


# 4) week 1 - Data Types - Factors 

x <- factor(c("yes", "yes", "no", "yes", "no")) #factor variable

table(x) #give a frequency count of each level

unclass(x) #convert to integer factor

x <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes","no")) #set the order of the level. Yes is the baseline level



# 5) week 1 - Data Types - Missing Values

x <- c(1, 2, NA, 10, 3)
is.na(x) #return a logical vector indicate VA value missing values. True indicate missing value
is.nan(x) #return a logical vector for NAN value

x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)


# 6) week 1 - Data Types - Data Frames
# Data frame used to store tabular data. 
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)

# 7) week 1 - data type - attributes
x <- 1:3
names(x)

names(x) <- c("foo", "bar", "norf")
x
names(x)

x <- list(a =1, b= 2, c=3) #list can also have names
x #print up the list and names

m <- matrix(1:4, nrow=2, ncol =2)
dimnames(m) <- list(c("a", "b"), c("c","d")) # to name rows and columns
m

#8) Texture Data - dput() dget()
y <- data.frame(a=1, b="a")
dput(y)
dput(y, file = "y.R") #use dput() the object into a file for recontsruction later
new.y <- dget("y.R") #dget() read back the object
new.y

# dump() similar to dget() just that dump can use on more than two objects

x <- "foo"
y <- data.frame(a=1, b="a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
y

# 9) subsetting-basic
# [] single bracket extract the single element or multiple elements, using numeric index or logic
# [] when apply to a list, it will extract the whole list including the elements
#[[]] when apply to a list, it will only extract the elements

## subsetting i think is same a extracting data
x <- c("a", "b", "c", "c", "d", "a")
x[1]  # extract single element using numeric index
x[2]
x[1:4] # extract a sequence of elements
x[x> "a"] # extract elements using logic
u <-x > "a" #create a logical vector. 
u
x[u] #subsetting using logical index

# 10) subsetting lists
x <-list(foo =1:4, bar =0.6)
x[1] #extract a list that contain a sequence
x[[1]] # extract only the sequence

x$bar  # that extract the element that contain the name bar
x[["bar"]] #extract only the element under the name bar
x["bar"]  # single bracket extract the list

x <- list(foo=1:4, bar=0.6, baz= "hello")
x[c(1, 3)] # cannot use $ or [[]] to extract multiple elements. only []

x <-list(foo =1:4, bar =0.6)
name <- "foo" # assign "foo" to name
x[[name]] #extract name in the list
x$name   # literature look for and extract word containing name, which does not exist
x$foo 

x <- list(a=list(10, 12, 14), b=c(3.14, 2.81))
x[[c(1,3)]]

# 11) Subsetting a matrix

x <- matrix(1:6, 2 ,3)
x
x[1, 2] #extract row 1, column 2
x[2, 1]

x[1, ] #indices can be missing. Extract the entire row 1
x[, 2] #indices can be missing. Extract the entire column 2

#by default, subsetting return a vector but not matrix.
#turn off by using drop = FALSE
x <- matrix(1:6, 2 ,3)
x[1, 2]
x[1, 2, drop = FALSE] #1x1 matrix with the element 3 in it

x <- matrix(1:6, 2 ,3)
x[1, ]
x[1, , drop = FALSE] #1x3 matrix with element 1, 3, 5


# 12) Partial Matching
x <- list(aarwark = 1:5)
x$a # do partial matching. No need to type out aarwark. 
x[["a"]] # literately look for name a. Do not do partial matching
x[["a", exact = FALSE]] #if using [[]], add exact = FALSE do enable partial matching


# 13) Removing NA values

x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x) # create a new logical vector bad and use is.na(x) to look through the elements with NA
x[!bad] #give the good element

x <- c(1, 2, NA, 4, NA, 5)
y <-c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x,y) # gives a vector
good
x[good]
y[good]

x <- c(1, 2, NA, 4, NA, 5)
y <-c("a", "b", "e", "d", NA, "f")
good <- complete.cases(x,y) # gives a vector containing elements where both x and y do not have NA
good
x[good]
y[good]

airquality[1:6, ]
good <- complete.cases(airquality)
airquality[good, ][1:6, ]

# 14) Vectorized Operations
x <- 1:4; y<-6:9
x + y
x >2
x >=2
y ==8
x * y
x / y

x <- matrix(1:4, 2 ,2); y <-matrix(rep(10, 4) , 2, 2)
x
x*y  ## element-wise multiplication
x/y
x %*% y ## true matrix multiplication

## QUIZZ
#row.names
#read.table() or read.csv()
#data.matrix() convert dataframe into matrix
#readLines   # for erading lines of a text file
#source - for reading in R code files (inverse of dump)
#dget, for reading in R code files (inverse of dput)
#load - for reading binary object into R

readfile <- read.csv("hw1_data.csv")

colnames(readfile) #Q11 extract column names

readfile[1:2,] #Q12 extract first 2 rows of the data frame

nrow(readfile) #13 count the number of observations (rows); ncol(readfile) to count number of columns

summary(readfile) #14 Count the number of NA in dataframe or
colSums(is.na(readfile)) 
rowSums(is.na(readfile))

mean(readfile$Ozone, na.rm=TRUE) #eQ15 get mean of the column exlcuding NA

extract1 <- subset(readfile, Ozone > 31 & Temp > 90) # use subset and logic to extract columns greater than a certain value
mean(extract1$Solar.R) # calculate mean after subset data frame

extract2 <- subset(readfile, Month==6) #Q19 subset data frame when Month equal to 6 and mean of Temp
mean(extract2$Temp)

extract3 <- subset(readfile, Month==5) #Q20 create subset then find max value in the Ozone column
max(extract3$Ozone, na.rm=T)