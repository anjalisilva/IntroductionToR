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

# Dataset we'll look at:
# Replication Data for: Assessing Public Value Failure in
# Government Adoption of Artificial Intelligence
# Data URL: https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/LIGARA

# Paper: Assessing public value failure in government
#        adoption of artificial intelligence
# Paper PDF shared via chat
# Paper URL: https://onlinelibrary.wiley.com/doi/10.1111/padm.12742

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


# Class 04 ####
# Author: Anjali Silva
# Date: 14 Nov 2022
# Lessons: 04, 05 

getwd()
# install.packages("tidyverse")
library("tidyverse")
library("haven")

# read in data
adsData <- haven::read_sav(file = "data/ads_raw.sav")
adsData
pillar::glimpse(adsData)

# pipe operator
# %>%
?`%>%`
filteredData <- dplyr::filter(adsData,
                              Duration__in_seconds_ < 100)
filteredData # 41 × 52

filteredDataPipe <- adsData %>%
                    dplyr::filter(Duration__in_seconds_ < 100)
filteredDataPipe # 41 × 52

adsData %>%
  dplyr::filter(Duration__in_seconds_ < 100) %>% # filtering
  dplyr::arrange(Duration__in_seconds_) %>% # arrange ascending
  dplyr::select(Duration__in_seconds_, Gender) # select column
# 41 × 1
# pipe help with readability and reduce amount of code

# mutating
adsData$Birthyear

library(lubridate)
?mutate
adsData2 <- adsData %>%
  dplyr::mutate(BirthyearAddDay = stringr::str_c(Birthyear, "07-01")) %>%
  dplyr::mutate(BirthyearAddDay =
                  lubridate::as_datetime(BirthyearAddDay)) %>%
  dplyr::select(EndDate, Birthyear, BirthyearAddDay)
adsData2 # 1460 x 3

# new column age
adsData2 <- adsData2 %>%
  dplyr::mutate(age = EndDate - BirthyearAddDay)
dim(adsData2) #  1460    4
# * Will visit next lecture, think about how to convert age in
#   days to age in years.
#   Note age is drtn: difftime
#   URL: tibble data types:
#   https://tibble.tidyverse.org/articles/types.html

#   Suggestion in class from Raymond
adsData2 %>%
  dplyr::mutate(age = EndDate - BirthyearAddDay) %>%
  dplyr::mutate(ageYears = age / 365)
adsData4$ageYears
adsData4$age

#   Another possibility
adsData2 %>%
  dplyr::mutate(age = EndDate - BirthyearAddDay) %>%
  dplyr::pull(age) %>%
  lubridate::time_length(unit = "year")
# Another way to write it
head(lubridate::time_length(adsData2$age, unit = "year"))


# Question on chat, do you need EndDate and Birthyear 
# to be same type - yes since dttm data
adsData3 <- adsData2 %>%
  dplyr::mutate(age = EndDate - Birthyear)
dim(adsData2) #  1460    4

# Pulling
# pull one column/variable from dataset
adsData %>%
  dplyr::pull(Duration__in_seconds_)

adsData$Duration__in_seconds_

adsData[ , 5]

adsData %>%
  dplyr::pull(Duration__in_seconds_) %>%
#  mean(na.rm = TRUE) # 283.261
#  median(na.rm = TRUE) # 237
#  range(na.rm = TRUE) # 50 1575
   var(na.rm = TRUE) # 29487.81

# summary
summary(adsData)

# summarize
# permit to do calculations
adsData %>%
  dplyr::summarise(
    mean_time = mean(Duration__in_seconds_, na.rm = TRUE),
    sd_time = sd(Duration__in_seconds_, na.rm = TRUE))

# grouping 
pillar::glimpse(adsData)
adsData$Gender
adsData %>% dplyr::group_by(Gender) # 1,460 × 52

?n # function from dplyr; gives the current group size.
adsData %>%
  dplyr::group_by(Gender) %>% # group first
  dplyr::summarise(count = dplyr::n(), # number of entries, then calculations
                   mean_time = mean(Duration__in_seconds_, na.rm = TRUE),
                   sd_time = sd(Duration__in_seconds_, na.rm = TRUE))

# --- --- --- ---

#  ces_2019_raw.csv; .csv = comma separated values

library("readr")
ls("package:readr") # list 
?read_csv
?readr
ces2019Raw <- readr::read_csv("data/ces_2019_raw.csv")
ces2019Raw
pillar::glimpse(ces2019Raw)

ces2019Raw %>% dplyr::pull(cps19_yob)
ces2019Raw %>% dplyr::pull(cps19_yob) %>% range(na.rm = TRUE)
# 1 82
# value of 1 = 1920
# value of 2 = 1921 ...

?ggplot2 # part of tidyverse

?hist # in base R
hist(ces2019Raw$cps19_yob)


ls("package:ggplot2")
ces2019Raw %>%
  ggplot2::ggplot(aes(x = cps19_yob)) +
  ggplot2::geom_histogram(bins = 50)
  
# data cleaning
CESdata <- ces2019Raw %>%
  dplyr::mutate(cps19_yob_fix = cps19_yob + 1919)
CESdata
CESdata$cps19_yob_fix %>% range() # 1920 2001

# improved x-axis
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_yob_fix)) +
  ggplot2::geom_histogram(bins = 50)

CESdata <- CESdata %>%
  dplyr::mutate(age = 2019 - cps19_yob_fix)
CESdata
dim(CESdata) # 37822   622
CESdata$age %>% range()


CESdata %>%
  ggplot2::ggplot(aes(x = age)) +
  ggplot2::geom_histogram(bins = 50)

# recode the gender variable
table(CESdata$cps19_gender)
# 1 = male, 2 = female, 3 = other

CESdata %>%
  ggplot2::ggplot(aes(x = cps19_gender)) +
  ggplot2::geom_bar() # bar plot

# recode
factor(CESdata$cps19_gender)
CESdata <- CESdata %>%
  dplyr::mutate(cps19_gender_fix = factor(cps19_gender)) %>%
  dplyr::mutate(cps19_gender_fix = forcats::fct_recode(cps19_gender_fix,
                                              "M" = "1",
                                              "F" = "2",
                                              "NB" = "3"))
CESdata$cps19_gender_fix
# End of 14 Nov 2022

# Case Study ####
# Date: 17 Nov 2022

# Topic: Social Determinants of Health Associated
# with Patient Portal Use in Pediatric Diabetes: 
# A case study
# By: Dr. Nicholas Mitsakakis
# Paper: Social Determinants of Health Associated With
# Patient Portal Use in Pediatric Diabetes
# URL: https://pubmed.ncbi.nlm.nih.gov/35864034/
# Slides: see GitHub


# Class 05 ####
# Author: Anjali Silva
# Date: 19 Nov 2022
# Lessons: 05 

# Question last class: How to convert age 
# in days to age in years?
# Instructor script line 675 for answer

# Data importing
library("tidyverse")
?readr::read_csv
?readxl::read_excel

# Pay attention to arguments and default values
readr::read_csv(file = "fileName.csv", skip = 2)
readr::read_csv(file = "fileName.csv", comment = "#")
readr::read_csv(file = "fileName.csv",  col_names = FALSE)
readr::read_csv(file = "fileName.csv", n_max = 1200)

# Writting 
?readr::write_csv()
# Sample data from package
challengeData <- readr::read_csv(
  readr::readr_example("challenge.csv"))
challengeData
pillar::glimpse(challengeData) 

readr::write_csv(x = challengeData, 
                 file = "data/challengeData.csv")

challengeDataAgain <- readr::read_csv(
  file = "data/challengeData.csv")

# R's binary format, also called RDS
# Rds is used to save a single R object.
readr::write_rds(x = challengeData, 
                 file = "data/challengeData.rds")
readRDSChallenge <- readr::read_rds("data/challengeData.rds")
readRDSChallenge 

# --- 
# 3 rules of tidy data
# 1. each variable must have its own column
# 2. Each observation must have its own row
# 3. Each value must have its own cell

# Tidyverse's tidy data package is called tidyr.
library(tidyr)
?tidyr
# create toy dataset
# weights of two pet cats
wideData <- tibble::tibble(
  year = c(2017, 2018, 2019, 2020, 2021, 2022),
  milo = c(4, 6.3, 8, 7.9, 8.1, 8.1),
  kitty = c(15.6, 15.9, 14, 12.2, 10.9, 9.9))
wideData
dim(wideData) # 6 x 3

?tidyr::pivot_longer
longData <- wideData %>%
  tidyr::pivot_longer(cols = c("milo", "kitty"),
                      names_to = "cat",
                      values_to = "weight")
longData # A tibble: 12 × 3 (before 6 x 3)


?tidyr::pivot_wider()

library(tidyr)
?tidyr::table2 # a dataset that comes with tidyr
pillar::glimpse(table2) 
tidyr::table2 # show the dataset.

tidyr::table2 %>%
  tidyr::pivot_wider(names_from = "type",
                     values_from = "count")
# A tibble: 6 × 4

# It is also important to keep in mind that
# not all data can be made tidy. 

# --- 

# Joins
# 2 types of joins: mutating joins and filtering joins

# Mutating joins
# There are 4 kinds: 
# Inner join and 3 outer joins: left, right and full join

# 2 toy datasets
employment <- tibble::tibble(year = c(1990, 1991, 1992, 1994),
                             rate = c(0.05, 0.02, 0.04, 0.02))
employment # A tibble: 4 × 2

housing <- tibble::tibble(date = c(1991, 1992, 1993, 1994, 1995),
                          rate = c(0.89, 0.6, 0.75, 0.88, 0.9))
housing # A tibble: 5 × 2

# inner join
employment %>%
  dplyr::inner_join(housing, by = c("year" = "date"))
# A tibble: 3 × 3

# Employment 1990, 1991, 1992,       1994
# Housing          1991, 1992, 1993, 1994, 1995

# we can also try the other way around - error
housing %>%
  dplyr::inner_join(employment, by = c("year" = "date"))

# issue fix 
housing %>%
  dplyr::inner_join(employment, by = c("date" = "year"))

# --- 
# outer: left
employment %>%
  dplyr::left_join(housing, by = c("year" = "date"))
#  A tibble: 4 × 3

# Employment 1990, 1991, 1992,       1994
# Housing          1991, 1992, 1993, 1994, 1995


# --- 
# outer: right
employment %>%
  dplyr::right_join(housing, by = c("year" = "date"))
# A tibble: 5 × 3

# Employment 1990, 1991, 1992,       1994
# Housing          1991, 1992, 1993, 1994, 1995


# --- 
# outer: full
employment %>%
  dplyr::full_join(housing, by = c("year" = "date"))
# A tibble: 6 × 3

# --- --- ---
# filtering joins
# 1. Semi join - keep all observations in x that match with y
# 2. Anti join - drops all observations in x that match with y

# treat x = employment and y = housing
employment %>%
  dplyr::semi_join(housing, by = c("year" = "date"))
# A tibble: 3 × 2

employment %>%
  dplyr::anti_join(housing, by = c("year" = "date"))
# A tibble: 1 × 2

# ---
# data.table 
# A CRAN package 
# link: https://cran.r-project.org/web/packages/data.table/index.html
install.packages("data.table") # download package
library("data.table") # attach

data()
?iris
class(iris) # data.frame

dtIris <- data.table::as.data.table(iris)
class(dtIris)
dtIris 

data.table::tables()

# --- Aside

# Memory
install.packages("pryr")
library("pryr") # attach
install.packages("lobstr")
library("lobstr")

# to determine the memory usage of current R session
pryr::mem_used()  # 169 MB (megabytes)
ls() # list all objects of current R session
pryr::object_size(dtIris) # show object size; 7.51 kB
testObject <- 1000L
pryr::object_size(testObject) # 56 B
# To remove any objects from the workspace:
rm(testObject)

# garbage collection system 
?gc # for garbage collection
?gcinfo # to print when garbage collection happen
# >gcinfo(TRUE)

# --
# datatable[i, j, k]
# i = selected/filtered/subset or reorder rows
# j = calculations/ for selecting columns
# k = grouping by 

# start with i - subesetting rows
dtIris[Petal.Width > 0.5, , ] # filtering
dtIris[order(Petal.Width), , ] # ordering row; ascending
dtIris[order(-Petal.Width), , ] # ordering row; descending

# look at j - calculations/ for selecting columns
dtIris[, Species, ] # select this column; return a vector

# look at j - calculations/ for selecting columns
# Cases with petal length > 2
dtIris[, Petal.Length > 2, ] # logical vector
# How many cases with petal length > 2
dtIris[, sum(Petal.Length > 2), ] # 100; 
# 100 cases with petal length > 2

# How many cases with petal length + petal. width > 2
dtIris[, sum((Petal.Length + Petal.Width) > 2), ] # 105 cases

#  How many setosas with petal length + petal. width > 2
dtIris[Species == "setosa", sum((Petal.Length + Petal.Width) > 2), ] # 5 cases

# .N ; holds the number of observations
dtIris[Species == "setosa", , ] # get the table back filtered
dtIris[Species == "setosa", .N, ] # 50 cases


# look at k - grouping by 
dtIris[, , by = Species] # Warning bcz j is not supplied
dtIris[, .N, by = Species] # count after grouping by species 


# ---
# Programming 
# R is a functional programming language. 
# R system includes some support for object-oriented programming

# Functions 

functionName <- function() { # arguments; 
  # curly brackets: start of body
  # body of function
  return(NULL)               # return statement
}                            # end of body


# Let's write a simple function that takes three numeric
# values, add first two and divide sum by the third
sum() # built-in functions

numberCalculation <- function(valueOne, 
                              valueTwo, 
                              valueThree) { 
  # statements, calculations
  valueSum <- sum(valueOne, valueTwo, na.rm = TRUE)
  valueFinal <-  valueSum / valueThree
  return(valueFinal)
}

# Test function 
numberCalculation(valueOne = 1, valueTwo = 2, valueThree = 3) # 1
numberCalculation(1, 2, 3) # 1
numberCalculation(4, 5, 6) # 1.5

numberCalculation(1, NA, 1) # 1

numberCalculation(2) # rror 

# Default values added
numberCalculation <- function(valueOne = 0, 
                              valueTwo = 0, 
                              valueThree = 1) { # start body
  # statements, calculations
  valueSum <- sum(valueOne, valueTwo, na.rm = TRUE)
  valueFinal <-  valueSum / valueThree
  return(valueFinal)
}

numberCalculation(2) #  # no error

# --- --- ---
# Functions are one tool for reducing duplication. 
# Another tool for reducing duplication is loops 

# Loops
# 1. for loops
# 2. while loops

# for loops
print(1)
print(2)
print(3)
print(4)
print(5)

for (i in 1:5) {
  print(i)
}

?iris # let's access iris
# obtain petal to sepal ratio using length for all observations
for (i in 1:nrow(iris)) {
  # print value of i
  cat("\n For observation =", i, ", ratio =", 
      iris$Petal.Length[i]/iris$Sepal.Length[i])
}

# ---

# * Question end of class about Assessment 2
?tidyr::table2
tidyr::table2
# Using tidyverse functions and other base R
# functions as necessary, write a custom function 
# to perform the following. The custom function
# you are to write should be called countryFilter. 
# The countryFilter function needs to have two arguments
# called dataset and countryChoice. Within the function body,
# use dplyr::filter to filter the user provided dataset 
# for the species that the user would specify in argument 
# irisSpecies. Return the resulting output to user within
# the function. Provide all your code for full marks.

library(tidyverse)
countryFilter <- function(dataset,
                          countryChoice) {
  output <- dataset %>%
    dplyr::filter(country == countryChoice) 
    return(output)
}

# Test function
countryFilter(dataset = tidyr::table2,
              countryChoice = "Afghanistan")

countryFilter(dataset = tidyr::table2,
              countryChoice = "Canada") 


# Class 06 ####
# Author: Anjali Silva
# Date: 21 Nov 2022
# Lessons: 06, 07

getwd()

# * Question end of last class about Assessment 2
# Thank you for bringing that to my attention. 
library(tidyverse)
library(tidyr)
?tidyr::table2
tidyr::table2

# Question: Using tidyverse functions and other base R
# functions as necessary, write a custom function 
# to perform the following. The custom function
# you are to write should be called countryFilter. 
# The countryFilter function needs to have two arguments
# called dataset and countryChoice. Within the function body,
# use dplyr::filter to filter the user provided dataset 
# for the country that the user would specify in argument 
# countryChoice. Return the resulting output to user within
# the function. Provide all your code for full marks.

countryFilter <- function(dataset, countryChoice) {
  output <- dataset %>%
    dplyr::filter(country == countryChoice)
  return(output)
}

countryFilter 

# Test function
countryFilter(dataset = tidyr::table2, 
              countryChoice = "Afghanistan")

countryFilter(dataset = tidyr::table2, 
              countryChoice = "Canada")


# * Take up student question 2 - options for
# appending data; 
# I will assume combining by row, given columns are same
# Covered in class how to join columns
?rbind
# bind data frames
combinedIris <- rbind(iris, iris)
dim(combinedIris) # 300 x  5

# bind tibbles
combinedIrisTibble <- 
  rbind(tibble::as_tibble(iris), 
        tibble::as_tibble(iris))
dim(combinedIrisTibble) # 300 x  5

?dplyr::bind_rows
combinedIrisTibble2 <- 
  dplyr::bind_rows(
    tibble::as_tibble(iris), 
    tibble::as_tibble(iris))
dim(combinedIrisTibble2) # 300 x  5

# Loops
# While loops
i <- 1
while(i <= 10) { # this is the condition
  cat("\n Value of i is", i, " and calculation output =", i * 5)
  i <- i + 1 # need to update i each time
}

# if/else logic - check for conditions

# if statement
if(condition) {
  # statement
}

xValue <- -5
if(xValue > 0) {
  cat("\n A positive number")
}

# ---
# if else
if(condition) {
  # statement
} else {
  # statement
}

xValue <- -5
xValue <- 3
if(xValue > 0) {
  cat("\n A positive number")
} else {
  cat("\n Not a positive number")
}

# ---
# if, else if (elif), else

xValue <- -6
xValue <- 0
if(xValue > 0) {
  cat("\n A positive number")
} else if (xValue < 0) {
  cat("\n Not a positive number")
} else {
  cat("\n It is zero")
}

countryFilter <- function(dataset, countryChoice) {
  if(typeof(countryChoice) != "character") {
    stop("\n countryChoice argument should be a character")
  }
  output <- dataset %>%
    dplyr::filter(country == countryChoice)
  return(output)
}
countryFilter

countryFilter(dataset = tidyr::table2,
              countryChoice = "Afghanistan")
countryFilter(dataset = tidyr::table2,
              countryChoice = 1)

# ---
# Conditions OR (||) or AND (&&)
xValues <- 1:5L
xValues <- list(1:5L)
xValues
typeof(xValues)
if(rlang::is_vector(xValues) == TRUE && 
   rlang::is_atomic(xValues) == TRUE) {
  cat("\n An atomic vector")
}

xValues <- list(1:5L)
xValues
xValues <- 1:5L
if(rlang::is_vector(xValues) == TRUE || 
   rlang::is_atomic(xValues) == TRUE) {
  cat("\n A vector")
}

# ---
# Simulation
# Uniform distribution
# Normal distribution

?runif # Uniform distribution
runif(n = 5)
runif(n = 5, min = 1, max = 10)
plot(runif(n = 5))

# set a seed to make results consistent
set.seed(seed = 1234)
# runif(n = 5)
plot(runif(n = 5))

runif(n = 5) # should generate a different value

set.seed(seed = 1234) # to go back to previous value
runif(n = 5) 

# Normal distribution
?rnorm
rnorm(10, 5, 1)
plot(rnorm(10, 5, 1))

# simulate a dataset
set.seed(1234)
simulatedData <- tibble::tibble(
  X = runif(10, 0, 20),
  Y = 3 * X + rnorm(10, 0, 1))

simulatedData

# --- 
# Sampling
?sample
letters # built-in R for alphabet letters

sampleLetters <- sample(x = letters, size = 3)

sample(x = letters, 
       size = 10, 
       replace = TRUE)

# Visualization

# UToronto Map and Data Library Data Visualization Guide
# https://mdl.library.utoronto.ca/dataviz/getting-started

# From Data to Viz
# https://www.data-to-viz.com/index.html

library(tidyverse)
library(ggplot2)

ggplot2::ggplot(data = , mapping = aes()) # initializes plot
?ggplot2::aes
# then add the layers

# access cleaned CES data
# Code: https://github.com/anjalisilva/IntroductionToR/blob/main/Lessons-Rscripts/cesRdataset.R
# Name of dataset: ces_2019_cleaned.csv

CESdata <- readr::read_csv(
  file = "data/ces_2019_cleaned.csv")

pillar::glimpse(CESdata)
# Rows: 37,822
# Columns: 621

# Let's plot choices for voting vs counts
# categories
CESdata %>%
  dplyr::select(cps19_votechoice) %>%
  unique() # 9 categories

# initiate
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice)) # +
  # layer 1 +
  # layer 2 +
  # layer x

# ggplot2 bar plot page
# https://ggplot2.tidyverse.org/reference/geom_bar.html
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice)) +
  ggplot2::geom_bar() # first layer

# Create plots subdirectory in Rproject
# Save plot in PNG format

# fix labels + add title
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45))


# add color by default
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      color = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45))

# add fill by default
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      color = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45))

# manually change fill
# Colorbrewer: https://colorbrewer2.org/#type=qualitative&scheme=Paired&n=12

# Color blind stimulator:
# www.color-blindness.com/coblis- color- blindness- simulator/

CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
     "#1f78b4", "#b2df8a", "#33a02c", 
     "#fb9a99", "#e31a1c", "#fdbf6f", 
     "#ff7f00", "#cab2d6"))


# Class 07 ####
# Author: Anjali Silva
# Date: 24 Nov 2022
# Lessons: 07, 08

getwd()

# access cleaned CES data
# Code: https://github.com/anjalisilva/IntroductionToR/blob/main/Lessons-Rscripts/cesRdataset.R
# Name of dataset: ces_2019_cleaned.csv
library(tidyverse)
CESdata <- readr::read_csv(
  file = "data/ces_2019_cleaned.csv")

CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6"))

# adding facets
# Not helpful
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6")) +
  ggplot2::facet_wrap(facets = "cps19_votechoice") # add facet


# let's explore CESdata$cps19_gender
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6")) +
  ggplot2::facet_wrap(facets = "cps19_gender") # add facet

# NB category is very low
CESdata %>%
  dplyr::filter(cps19_gender != "NB") %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6")) +
  ggplot2::facet_wrap(facets = "cps19_gender") # add facet

# see facet by cps19_bornin_canada
# fix legend title
CESdata %>%
  ggplot2::ggplot(aes(x = cps19_votechoice,
                      fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019",
    fill = "Vote choices") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6")) +
  ggplot2::facet_wrap(facets = "cps19_bornin_canada") # add facet


# themes
# should be added at the very end
?ggplot2::theme_bw
CESdata %>%
ggplot2::ggplot(aes(x = cps19_votechoice,
                    fill = cps19_votechoice)) +
  ggplot2::geom_bar() + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019",
    fill = "Vote choices") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6")) +
  ggplot2::facet_wrap(facets = "cps19_bornin_canada") + # add facet
  ggplot2::theme_bw()


# changing order of bars
CESdata %>%
  dplyr::pull(cps19_votechoice) %>% 
  factor() %>% unique()

# let's create a new column called
# reOrderVotechoice with the order we like

# Question on chat: how to add "Born in Canada"
# or "Not born in Canada" insted of "Yes" or "No"
CESdata %>%
  dplyr::filter(cps19_bornin_canada != 
                  "Don't know/ Prefer not to answer") %>%
  dplyr::mutate(reOrderVotechoice = 
        factor(cps19_votechoice,
               level = c("Liberal Party",
                         "Conservative Party",
                         "NDP",
                         "Bloc Québécois",
                         "People's Party",
                         "Green Party",
                         "Another party",
                         "<NA>"))) %>%
  dplyr::mutate(cps19_bornin_canada_fix = forcats::fct_recode(cps19_bornin_canada,
                                                       "Born in Canada" = "Yes",
                                                       "Not born in Canada" = "No")) %>%
  ggplot2::ggplot() + # initializing
  ggplot2::geom_bar(aes(x = reOrderVotechoice,
                        fill = reOrderVotechoice)) + # first layer
  ggplot2::labs(
    x = "Vote choices",
    y = "Count",
    title = "Count vs Vote Choices from CES 2019",
    fill = "Vote choices") +
  ggplot2::scale_x_discrete(guide = guide_axis(angle = 45)) +
  ggplot2::scale_fill_manual(values = c("#a6cee3",
                                        "#1f78b4", "#b2df8a", "#33a02c", 
                                        "#fb9a99", "#e31a1c", "#fdbf6f", 
                                        "#ff7f00", "#cab2d6")) +
  ggplot2::facet_wrap(facets = "cps19_bornin_canada_fix") + # add facet
  ggplot2::theme_bw()


# ---
iris

iris %>%
  ggplot2::ggplot(aes(x = Petal.Width,
                      y = Petal.Length,
                      fill = Species,
                      color = Species,
                      shape = Species)) + 
  ggplot2::geom_point() +
  ggplot2::geom_jitter(position = position_jitter(0.1)) + 
  ggplot2::labs(
    x = "Petal Width (cm)",
    y = "Petal Length (cm)",
    title = "Petal Width vs Petal Length") +
  ggplot2::scale_color_manual(
    values = c("#1f78b4", "#b2df8a", "#fb9a99")) +
  ggplot2::scale_x_continuous(breaks = seq(0, 3, by = 0.2)) + 
  ggplot2::theme_bw()
  
# types of plots
ggplot2::geom_histogram()
ggplot2::geom_violin()
ggplot2::geom_boxplot()
ggplot2::geom_density()
ggplot2::geom_dotplot()

# Break till 7.15 pm

# --- --- --- --- --- ---
# Shiny

# shiny web
# https://shiny.rstudio.com

# Shiny apps have 2 components
# 1. user interface (UI)
# See UI Inputs/outputs
# https://shiny.rstudio.com/reference/shiny/1.0.5/

# 2. server instructions

# Example
# https://shiny.rstudio.com/gallery/kmeans-example.html

# download Shiny
install.packages("shiny")
library("shiny")


# --- Copy the code

# k-means only works with numerical variables,
# so don't give the user the option to select
# a categorical variable
vars <- setdiff(names(iris), "Species")

ui <-
pageWithSidebar(
  headerPanel('Iris k-means clustering'),
  sidebarPanel(
    selectInput(inputId = 'xcol', label = 'X Variable', choices = vars),
    selectInput('ycol', 'Y Variable', vars, selected = vars[[2]]),
    numericInput('clusters', 'Cluster count', 3, min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- 
function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    iris[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(selectedData(), input$clusters)
  })
  
  output$plot1 <- renderPlot({
    palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
              "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
    
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })
  
}
ui
server
# run shiny app
shiny::shinyApp(ui = ui, server = server)

# --- Explore Shiny apps from others
# 3 main repositories for R packages
# CRAN, Bioconductor, GitHub

# Bioconductor: shiny app R package
# shinyMethyl 
# Link: # https://bioconductor.org/packages/release/bioc/html/shinyMethyl.html

# install.packages() is for CRAN
install.packages("BiocManager") # CRAN
library("BiocManager") # CRAN
BiocManager::install("shinyMethyl") # shinyMethyl is in Bioconductor
library("shinyMethyl") # attach 
ls("package:shinyMethyl") # runShinyMethyl is the shiny app
BiocManager::install("minfiData") # only for data
library("minfiData")
# RGsetEx come from minfiData
summarizedData <- shinyMethyl::shinySummarize(RGsetEx)
shinyMethyl::runShinyMethyl(summarizedData)


# Class 08 ####
# Author: Anjali Silva
# Date: 24 Nov 2022
# Lessons: 08, 09, 10, 11

getwd()
# 3 repos: CRAN, Bioconductor, GitHub


# How would you download 'genegilter' package from
# Bioconductor?
# URL: https://www.bioconductor.org/packages/release/bioc/html/genefilter.html
install.packages("BiocManager") # CRAN
library("BiocManager")
BiocManager::install("genefilter")
library(genefilter)



# Shiny Gallery
# https://shiny.rstudio.com/gallery/


# --- --- --- Shiny via GitHub
# MPLNClust: https://github.com/anjalisilva/MPLNClust
library(shiny)

install.packages("devtools") # CRAN
library("devtools")
# <userName>/<packageName>
devtools::install_github("anjalisilva/MPLNClust", build_vignettes = TRUE, force = TRUE)
library("MPLNClust")
ls("package:MPLNClust")
# To run the Shiny app:
MPLNClust::runMPLNClust()




# --- --- --- Exit Survey
# Be sure to do the exit survey and provide your feedback. 
# link shared on chat



# --- --- --- Ethics

# --- --- --- Informed Consent
# IRB = institutional review boards
# AB testing


# Article: Experimental evidence of massive-scale emotional
# contagion through social networks
# https://www.pnas.org/doi/10.1073/pnas.1320040111

# --- --- --- Data Ownership
# Digital preservation policy
# URL: https://onesearch.library.utoronto.ca/sites/default/files/utl_digital_preservation_policy_final.pdf

# --- --- --- Privacy
# URL: http://www.bigdatadialog.com/privacy/passwords-privacy-and-protection-can-apple-meet-fbis-demand-without-creating-a-backdoor

# --- --- --- Anonimity  

# --- --- --- Data Validity

# - URL: https://orwh.od.nih.gov/sex-gender/nih-policy-sex-biological-variable 
# - URL: CIHR has similar policies
#   https://cihr-irsc.gc.ca/e/50833.html 
# - NSERC also encourages inclusion of sex, if posisble.
#   URL: https://www.nserc-crsng.gc.ca/NSERC-CRSNG/Policies-Politiques/EDI_guidance-Conseils_EDI_eng.asp
# - SSHRC (Social Sciences and Humanities Research Council) guide: https://www.sshrc-crsh.gc.ca/funding-financement/apply-demande/guides/partnership_edi_guide-partenariats_guide_edi-eng.aspx


# --- --- --- Algorithm Fairness
# - URL: https://www.wsj.com/articles/SB10001424127887323777204578189391813881534
# - URL: https://www.nytimes.com/2016/05/12/technology/facebooks-bias-is-built-in-and-bears-watching.html


# Break until 11.00 am

# --- --- --- Equity, Diversity and Inclusion (EDI)
# Diversity
# Inclusion
# Equity
# Stereotypes
# Bias

# What can we do to tackle unconsious bias?

# Questions to ask?

# Some useful guides: 
# - NSERC guide: https://www.nserc-crsng.gc.ca/NSERC-CRSNG/Policies-Politiques/EDI_guidance-Conseils_EDI_eng.asp

# - SSHRC (Social Sciences and Humanities Research Council) guide: https://www.sshrc-crsh.gc.ca/funding-financement/apply-demande/guides/partnership_edi_guide-partenariats_guide_edi-eng.aspx

# - CIHR guide: https://cihr-irsc.gc.ca/e/52543.html

# - Canadian Human Rights Act: 
# https://laws-lois.justice.gc.ca/eng/acts/h-6/FullText.html

# - The Ontario Human Rights Code:
# https://www.ohrc.on.ca/en/ontario-human-rights-code

# - Accessibility for Ontarians with Disabilities Act:
# https://aoda.ca/free-online-training/


# --- --- --- Professional Skills

# Research Data Management
# Tri council data management policy:
# https://science.gc.ca/site/science/en/interagency-research-funding/policies-and-guidelines/research-data-management/tri-agency-research-data-management-policy

# CHEO - Children's Hospital of Eastern Ontario 
# Has their own data management policies
# https://www.cheoresearch.ca/about-us/research-integrity/

# University of Toronto's RDM guidelines
# https://onesearch.library.utoronto.ca/researchdata

# --- --- --- Extra

# The R Journal: https://journal.r-project.org/

# RStudio Education Series (free): https://education.rstudio.com/learn/

# Bioconductor Workshops: https://www.bioconductor.org/help/events/

# R User Groups https://jumpingrivers.github.io/meetingsR/

# useR! 2022: https://user2022.r-project.org/

# R-Ladies Toronto: https://www.meetup.com/rladies-toronto/

# Inequity Speaker Series: https://datasciences.utoronto.ca/dsi-home/inequity-speaker-series

# Toronto Data Workshop: https://rohanalexander.com/toronto_data_workshop.html

# TorBug: https://torbug.org/schedule/

# Data Sciences Speaker Series at U of T: https://canssiontario.utoronto.ca/events/dsssuoft/

# [End of File]