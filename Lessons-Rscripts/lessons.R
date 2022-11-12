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


# Class 02 ####
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

# Class 03 ####
# Author: Anjali Silva
# Date: 12 Nov 2022
# Lessons: 03, 04

getwd() # check working directory

# Subsetting
# Accessing elements

namedVector <- c(a = 100, b = 200, c = 80)
namedVector
names(namedVector) # "a" "b" "c"
namedVector[1]
namedVector["a"]
namedVector[1:2]
namedVector[1:3]
namedVector[1:4]
namedVector[-1] # removed first position
namedVector[-c(1:2)]
namedVector[c("a", "b")] # accessing elements a and b

namedVector[c(1, -3)] # cannot mix positive and
# negative integers when accessing vectors
# only 0's may be mixed with negative subscripts

namedVector[c(0, -3)] 
namedVector[-3]
namedVector[1]


# Lists - heterogeneous
myList <- list(7.5, "list", TRUE, 4+1i, 4L)
myList
typeof(myList) # list
myList[1]
myList[[1]]
typeof(myList[[1]]) # double
typeof(myList[[2]]) # "character"
length(myList) # 5
str(myList)
?str
# indexing in R: section 3.4 Indexing
# URL: https://cran.r-project.org/doc/manuals/R-lang.html#Indexing

# vectors 1D - take length
# structures 2D - dimension

# Tibbles are 2D structures from tidyverse package
# Tibble columns have to be the same length
# Each column has to have the same data type

# install.packages("tidyverse")
library("tidyverse")
myTibble <- tibble::tibble(x = c(1:5),
                           y = letters[1:5],
                           z = x + 2) # x is a variable
myTibble # 5 rows x 3 columns
dim(myTibble) # 5 3
class(myTibble)

data() # access built-in datasets in R
iris
head(iris)
class(iris) # "data.frame"

irisTibble <- tibble::as_tibble(iris)
class(irisTibble) # now a tibble


# strings in R
"Hello world"
'Hello world'

library("tidyverse")
# install.packages("stringr")
library("stringr")
# install.packages("htmlwidgets")
library("htmlwidgets")

stringr::str_length("Hello world") # length is 11
stringr::str_length("Hello world DSI") # 15

userName <- c("Anjali", "Jessie") # character vector
typeof(userName)
stringr::str_c("Welcome to webpage of ", userName)
stringr::str_c("Welcome to webpage of ", userName[1])
?str_c

stringr::str_sub("This is a string", 7, 12) # subsetting
testDNA1 <- "TCGATTC"
testDNA2 <- "GCGGGCA"
stringr::str_c(testDNA1, stringr::str_sub(testDNA2, 4, 6))
# TCGATTCGGC

stringr::str_to_lower("UPPER")
stringr::str_to_upper("upper")
stringr::str_to_title("no capitalization")

# matching patterns
myString <- c("apple", "banana", "celementine", "dragonfruit")
myString
stringr::str_view(myString, "an")
stringr::str_view_all(myString, "an")

stringr::str_view_all(myString, ".a") # period indicate
# any character except a new line
stringr::str_view_all(myString, "^a") # ^ matches start
stringr::str_view_all(myString, "a$") # $ define the end

myString2 <- c("apple", "banana", "celementine", 
               "dragonfruit", 1:4)
myString2
stringr::str_view_all(myString2, "\\d") #\d need an escape 
# character

myString3 <- c("apple pie", "banana", "celementine", 
               "dragonfruit", 1:4)
stringr::str_view_all(myString3, "\\s") # find white space

# example
install.packages("protr")
library("protr")
ls("package:protr") # list all the function
?protr
?readFASTA
P00750 <- readFASTA(system.file("protseq/P00750.fasta",
                                package = "protr"))
P00750
stringr::str_view_all(P00750, "CGA")
stringr::str_view_all(P00750, "CG")
stringr::str_count(P00750, "CG") # 4 

# factors 
library(forcats)
?forcats
letters
month.abb
monthsVector <- month.abb
typeof(monthsVector)
monthsVector

monthsVectorFactor <- factor(monthsVector)
monthsVectorFactor

monthsVectorFactor2 <- factor(c(month.abb, month.abb))
monthsVectorFactor2

# recode factors - to alter coding for some categories
forcats::fct_recode(monthsVectorFactor2, "December" = "Dec")

forcats::fct_recode(monthsVectorFactor2, 
                    "December" = "Dec",
                    "March" = "Mar")

# date
install.packages("lubridate")
library("lubridate")
?lubridate
lubridate::today()
lubridate::now()

date <- "20170102"
lubridate::ymd(20170102) # "2017-01-02"

lubridate::ydm(20170102) # "2017-02-01"

lubridate::mdy("January 31st, 2017") # "2017-01-31"

lubridate::dmy("31-Jan-2017") # "2017-01-31"

# y is for year
# m for month
# d for date

# h hours
# m minutes
# s for seconds

dateTime <- lubridate::now()
dateTime # "2022-11-12 10:41:16 EST"

dateTimeFormatted <- lubridate::ymd_hms(dateTime, tz = "EST")
lubridate::month(dateTimeFormatted) # month
lubridate::mday(dateTimeFormatted) # day of the month
lubridate::yday(dateTimeFormatted) # day of year

# Missing data
NA # Not applicable or not available; define missing data

vectorNumeric <- c(1:5, NA)
vectorNumeric
length(vectorNumeric)

is.na(vectorNumeric) # detect if NA values are present

# Which of the values are not missing?
vectorNumeric[is.na(vectorNumeric) == FALSE] # 1 2 3 4 5
vectorNumeric[is.na(vectorNumeric) != TRUE] #  1 2 3 4 5

objectName = 1 # assignment; not recommended
objectName <- 1 # assignment;  recommended
objectName == 1 # checking if equal
objectName != 1 # checking those not equal to 

# Which of the values are missing?
vectorNumeric[is.na(vectorNumeric) == TRUE] # NA
vectorNumeric[is.na(vectorNumeric) != FALSE] # NA

vectorNumeric
# To get the location of where the missing value is
which(is.na(vectorNumeric) == TRUE)

# To get the location of where the values are present; i.e.,
# no missing values
which(is.na(vectorNumeric) == FALSE)

anyNA(vectorNumeric) # TRUE


# Lesson: 04 on data manipulation
tidyverse::tidyverse_packages()
# install.packages("haven")
library(haven)
?haven
ls("package:haven") # list all function

# dataset we'll look at
# Replication Data for: Assessing Public Value Failure in
# Government Adoption of Artificial Intelligence
# https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/LIGARA


getwd() # /Users/as/Desktop/DSI-IntroR
# produce error
adsData <- haven::read_sav(file = "ads_raw.sav")

# need to go to data subdirectory
adsData <- haven::read_sav(file = "data/ads_raw.sav")
adsData
dim(adsData) # 1460   52
pillar::glimpse(adsData)

# dplyr: grammar of data manipulation
# https://dplyr.tidyverse.org/  

# filtering
# permit to select rows based on specific criteria/trait
pillar::glimpse(adsData)

adsData$Duration__in_seconds_

# check for missing values
anyNA(adsData$Duration__in_seconds_) # FALSE

?dplyr::filter
filteredData <- dplyr::filter(adsData, 
                              Duration__in_seconds_ < 100)
filteredData # 41 X 52
dim(filteredData) # 41 52

# double check
filteredData$Duration__in_seconds_
range(filteredData$Duration__in_seconds_) # 50 99

adsData$Gender
table(adsData$Gender)
# filter data to only contain males
filterGender <- dplyr::filter(adsData, Gender == 1)
filterGender # 758 × 52

# arranging
# permit to sort the order
adsData$Duration__in_seconds_
?dplyr::arrange

arrangedData <- dplyr::arrange(adsData, Duration__in_seconds_)
arrangedData
dim(arrangedData) # 1460   52
arrangedData$Duration__in_seconds_

arrangedDataDescending <- dplyr::arrange(adsData, 
                                         -Duration__in_seconds_)
arrangedDataDescending$Duration__in_seconds_
pillar::glimpse(arrangedDataDescending)


# selecting
# allows to select or remove columns
?dplyr::select
adsData$Duration__in_seconds_

selectColumn <- dplyr::select(adsData, Duration__in_seconds_)
selectColumn # 1,460 × 1
dim(adsData) # 1460   52

# remove a column
removeColumn <- dplyr::select(adsData,
                              -Duration__in_seconds_)
removeColumn # 1460   51
dim(removeColumn) # 1460   51
dim(adsData) # 1460   52

pillar::glimpse(adsData)
adsData$Consent
table(adsData$Consent)
selectedData2 <- dplyr::select(adsData, -Consent)
dim(selectedData2) # 1460   51

# Answering question on chat
questionOnChat <- dplyr::select(adsData, 
                               Duration__in_seconds_,
                               Consent)
questionOnChat # 1,460 × 2
pillar::glimpse(questionOnChat)
# End of 12 Nov 2022

# [End of File]