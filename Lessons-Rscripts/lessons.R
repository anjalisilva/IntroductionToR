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
# + # add
# - # subtract
# * # multiplication
# / # division
  
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


# Class 2 ####
# Author: Anjali Silva
# Date: 10 Nov 2022
# Lessons: 01, 02, 03


# Question from last class
adfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfaf <- 1
adfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfaf
nchar("adfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfaf")
# 168
object.size("adfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfafadfadfadfdfadfadfdfklja999adfadfadfafadfaf")
# 280 bytes
?name
# Names are limited to 10,000 bytes

mean(c(1, 2, 3))
mean(x = c(1, 2, 3))
meanOutput1 <- mean(x = c(1, 2, 3))
meanOutput1 # 2

# Help documentation is very important
meanOutput2 <- mean(x = c(1, 2, 3, NA))
meanOutput2 # NA
meanOutput3 <- mean(x = c(1, 2, 3, NA), na.rm = TRUE)
meanOutput3 # 2
  
sessionInfo() # to see base packages in R
library(help = "base")
library(help = "stats")
library(help = "datasets")
data() # access built in functions in R

AirPassengers
?iris
iris
head(iris)

# Repositories for R packages: CRAN, Bioconductor, GitHub
# The Comprehensive R Archive Network (CRAN) Link:
# https://cran.r-project.org/web/packages/

# Tidyverse CRAN
# https://cran.r-project.org/web/packages/tidyverse/index.html

# Bioconductor
# Link: https://www.bioconductor.org/packages/release/bioc/

# GitHub
# Link: https://github.com/search?q=r&type=registrypackages

# To download from CRAN
install.packages("") # to download
library("")

# to download tidyverse from CRAN
install.packages("tidyverse") # to download
library("tidyverse") # to attach the package to current
#                      R session
?tidyverse
ls("package:tidyverse") # to list all functions
tidyverse_packages()

citation() # to cite R
citation("tidyverse") # to cite tidyverse
install.packages("rstudioapi")
library("rstudioapi")
rstudioapi::versionInfo()$citation # to cite RStudio

# What to do if you come across an issue?
log(-1:3)
log("a")

# RStudio Community to get help
# https://community.rstudio.com/

# reprex: reproducible examples
# 1. Environment; 
sessionInfo()
# 2. Toy dataset
# 3. Code

# R markdown
install.packages("rmarkdown")
library("rmarkdown")
# R markdown cheatsheet
# https://posit.co/blog/cheat-sheet-updates/

# For obtaining Latex, see assessment 1 instructions:
# https://github.com/anjalisilva/IntroductionToR/blob/main/Assessments/02_Assessment1.pdf 


# Vector 
# 1. atomic - homogeneous
# 2. lists - heterogeneous
# 3. NULL represents absence of a vector
NULL

# Different element types

exampleElement <- "Hello word"
typeof(exampleElement) # "character"

1 # is treated like 1.0
typeof(1) # "double"

1L # 1
typeof(1L) # "integer"

TRUE
typeof(TRUE) # "logical"

# Imaginary numbers
typeof(3 + 1i) # "complex"

raw(2)
typeof(raw(2)) # "raw"
?raw

b <- 1
b


# atomic vectors
# c function
c()
?c

# numeric vector
doubleVector <- c(1, 2, 3, 4)
typeof(doubleVector) # "double"

integerVector <- c(1L, 2L, 3L, 4L)
typeof(integerVector) # "integer"
integerVector
length(integerVector)

# logical vectors
logicalVector <- c(TRUE, FALSE, TRUE, TRUE)
typeof(logicalVector) # "logical"
NA
logicalVector2 <- c(TRUE, FALSE, TRUE, TRUE, NA)
typeof(logicalVector2)
sum(logicalVector) # 3
sum(logicalVector2, na.rm = TRUE) # 3
?sum

# Character vectors
characterVector <- c("hello", "world", "DSI")
typeof(characterVector)

# coercion
# converting one type to another of vector
# 1. Automatic - R decides
# 2. Explicit - User decides

# Automatic
?c
# (most restrictive; least complex) NULL < raw < logical 
#       < integer < double < complex < character <
#                 list < expression (least restrictive; most complex)

# automatic/implicit coercion
mixVector <- c("hello", TRUE, 1L, 2.5, 4+1i)
mixVector
typeof(mixVector) # "character"

mixVector2 <- c(TRUE, 1L, 2.5, 4+1i)
typeof(mixVector2) # "complex"

# explicit coercion - as.* function

characterVector2 <- c("1", "2", "3")
typeof(characterVector2) # "character"

numericVector2 <- as.numeric(characterVector2)
typeof(numericVector2) # "double"

numericVector3 <- as.integer(characterVector2)
typeof(numericVector3) # "integer"

numericVector4 <- as.logical(characterVector2)
typeof(numericVector4) # "logical"
numericVector4 # NA NA NA

# vector recycled
1:5 + 6:10
# 1 2 3 4 5
# 6  7  8  9 10

1:2 + 1:4
# 1 2 
# 1 2 3 4

1:2  + 1:5
# 1 2 1 2 1
# 1 2 3 4 5
# answer: 2 4 4 6 6

# naming
exampleVector <- c(1:5)
exampleVector
names(exampleVector) # NULL
length(exampleVector)
# letters is reserved for alphabet letters
names(exampleVector) <- letters[1:5]
names(exampleVector) # "a" "b" "c" "d" "e"
exampleVector

namedVector <- c(a = 100, b = 200, c = 80)
namedVector

# functionName() # round brackets for function names
# End of class 10 Nov 

# [End of File]