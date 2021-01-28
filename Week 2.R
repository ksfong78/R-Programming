#1 Control structures; if

#if(<condition>){
  ## do something
} eslse {
  ## do something else
}

#if(<condition>){
  ## do something
} eslse if(<condition2>) {
  ## do something different
} eslse {
  ## do something else
}

#example
#this is valid
if(x>3){
  y <- 10
} else {
  y <-0
}
# this is another way. Easier to read.
y <- if(x>3) {
  10
} else {
  0
}
# not necessary to have else clause if you want

#2 Control structures - for loop

#4 different ways to print 
x <- c("a", "b", "c", "d")

for (i in 1:4){
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}
for(i in 1:4) print(x[i])

#for loops can be nested

x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#4 Control structures - while loop
# is harder to know when the while loop will finish, sometimes better to use for loop which has a hard limit

#example
count <- 0
while(count < 10){
  print(count)
  count <- count +1
}




