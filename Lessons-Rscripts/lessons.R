# Class 01 ####
# Author: Anjali Silva
# Date: 7 Nov 2022
# Lessons: 00, 01, 02 

getwd() # get working directory

# to set working directory
setwd("/Users/as/Desktop/DSI-IntroR") # not recommended
# recommended
# Session -> Set working directory -> choose directory
# Or use files tab

# A variable/ R object
exampleVariable <- 1 # <- is the assignment operator
exampleVariable = 1 # not recommended
exampleVariable # autoprinting
rm(exampleVariable)

# This shows the environment tab which is 
# used for showing variables or objects in 
# the current R session.

# This is a new comment. 

# R is case sensitive
exampleVariable <- 1
examplevariable
exampleVariable
exampleVariable2 <- 2

rm(exampleVariable, exampleVariable2)

exampleVariable <- 1
exampleVariable
exampleVariable <- 10 # dynamic variable typing
exampleVariable
exampleVariable <- "a"
exampleVariable

# Object names camelCase styling
exampleVariable

# underscore style
example_variable

# dot style: not recommended
example.variable

# R has reserved words
NA # not available
NaN # not a number
TRUE
FALSE
T
F
# don't use thse to create objects


# Mathematical operations
+ # add
- # subtract
* # multiplication
/ # division
  
# built-in functions; originally a statistical language
mean()
sqrt()
seq()

# functionName(argumentName) # structure of function
# args, return values
# this gives return values

mean(c(1, 2, 3))

# help documentation
?mean
help(mean)

# example from help documentation
x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))

# End of class 7 Nov 

# [End of File]
