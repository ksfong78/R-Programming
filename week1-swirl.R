
#2 workspace and files
getwd() #find out current work directory
ls() # List all the objects in your local workspace
list.files() # list all the files in work directory
?list.files # get help file by putting ? sign in front of the command
dir.create("any name") # to create new directory in current working directory
setwd("testdir") # set workign directory
file.exists("mytest.R") # to check if "mytest.R" exisits in the direcotry
file.rename("mytest.R", "mytest2.R") # to rename file
file.copy("mytest2.R", "mytest3.R") # to copy file
dir.create(file.path("testdir2", "testdir3"), recursive = TRUE) # to create testdir3 directory under testdir2 folder\

#3 Sequence
my_seq <- seq (5, 10, length=30) #use seq() to create a sequence of number, same as : function
rep(0, times=40) # to create a vector that contains 40 zeros. replicate numbers
rep(c(0,1,2), times=10)
rep(c(0,1,2), times=10)
               

#4 Vectors
num_vect <- c(0.5, 55, -10, 6) # ccreate numeric vector
tf <- num_vect < 1 # logic

my_char <- c("My", "name", "is")
paste(my_char, collapse = " ")
my_name <-c(my_char, "cedric")
paste(my_name, collapse = " ") # we used the paste() function to collapse the elements of a single character vector. paste() can also be used to join the elementsof multiple
paste("Hello", "world!", sep = " ") #In the simplest case, we can join two character vectors that are each of length 1 (i.e. join two words). Try paste("Hello", "world!", sep = " "), where the `sep` argument tells R that we want to separate the joined elements with a single space.
paste(1:3, c("X", "Y", "Z"), sep = "") # join two vecotrs of equal length

#5 Missing values

y <- rnorm(1000) #create a vector containing 1000 draws from a standard normal distribution
z <- rep (NA, 1000) #create a vector containing 1000 NAs
my_data <- sample(c(y, z), 100)     #select 100 elements at random from these 2000 values (combining y and z) 
my_na <- is.na(my_data) #a() function tells us whether each element of a vector is NA.
#NaN, which stands for 'not a number'

#6 Subset
y <- x[!is.na(x)] # `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is not NA'. Therefore, if we want to create a vector called y that contains all of the non-NA values from x,
x[!is.na(x) & x > 0] 
x[c(-2, -10)] #hereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x, x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.


#7 matrice and data frame

my_vector <- 1:20
dim(my_vector) <- c(4,5) # use dim() to give my_vector 4 rows and 5 columns, become a matrix
attributes (my_vector) # to see the dimsion or use dim(my_vector)
class(my_vector) # to check the class is matrice
identical(my_matrix, my_matrix2) # to check if two matrix are identical

patients <- c("Bill", "Gina", "Kelly", "Sean") # create name vector
my_data <- data.frame (patients, my_matrix) # use data.frame() to combine row names as a column into matrix
class(my_data) #class is dataframe

cnames <- c("patient", "age", "weight", "bp", "rating", "test") # create column names
colnames(my_data) <-cnames # to set column names in the data.frame
