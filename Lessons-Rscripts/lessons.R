#### Class 01 ####
# Author: Anjali Silva
# Date: 27 June 2022

# location
getwd() # get working directory

setwd("/Users/as/Desktop/DSI-IntroR") # don't do manually

exampleVariable <- 1 # <- is the assignment operator
exampleVariable # autoprint
# slide 19 of lesson 01 more about coding style

# R is case sensitive
exampleVariable

examplevariable <- 2
examplevariable
exampleVariable

examplevariable <- 2
examplevariable
examplevariable <- 20
examplevariable

# Object names camelCase styling
exampleVariable

# underscore style
example_Variable

# dot style : not recommended
example.Variable

# built-in
mean()
sqrt()
seq()

# functionName(argumentNames) # structure of function
# this gives return value

mean(c(1, 2, 3))

# help documentation
?mean
help(mean)

x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))

mean(1, 2, 3) # returned 1 as the return value

mean(x = c(1, 2, 3))

# break return at 7.06 pm

sessionInfo() # access base packages
library(help = "base") # to see built-in function in base R package


# R packages (not built-in functions in R)
# repositories
# CRAN, Bioconductor, GitHub 

# tidyverse
install.packages("tidyverse")
library("tidyverse") # loading/attaching
?tidyverse
ls("package:tidyverse")
tidyverse_packages()


# exercise - slide 30
# 1
install.packages("faraway")
library("faraway")

# 2
my_sequence <- c(1, 2, 3, 4, 5, 6, 7)
my_sequence <- seq(1, 7, 1)

# 3 
sqrt_sequence <- sqrt(my_sequence)

# 4
sqrt_sequence * 3

# file types
# .R - r script
# .Rproj
# .Rmd - R markdown


# Googling - lesson 02
packageVersion("tidyverse")
R.Version()
RStudio.Version()
sessionInfo()


# to access built in datasets in R
data(package = "datasets")

#### Class 02 ####
# Author: Anjali Silva
# Date: 27 June 2022
# Lesson: 03 Data in R

# Vector - 1D data structures that can hold multiple values
# 1. Atomic - homogeneous
# 2. Lists - heterogeneous

# Different data types in R
# Character, integer, double, logical, complex and raw

exampleElement <- "Hello world"
typeof("Hello world")

typeof(1L) # integers in R specified by L suffix

typeof(1) # double

typeof(TRUE) # logical
FALSE
T
F

typeof(3+1i) # complex
typeof(raw(2)) # raw
?raw


# Atomic vectors

# numeric vectors
exampleVector <- c(1, 2, 3, 4)
# c function 
?c

typeof(exampleVector)

integerVector <- c(1L, 2L, 3L, 4L)
typeof(integerVector)
integerVector
length(integerVector) # 4 

# logical vectors

logicalVectors <- c(TRUE, TRUE, FALSE, FALSE, NA)
NA # Not Available or Not applicable
typeof(logicalVectors)
length(logicalVectors)

logicalVectors2 <- c(TRUE, TRUE, TRUE, FALSE, FALSE)
typeof(logicalVectors2)
length(logicalVectors2)
sum(logicalVectors2) # 3

# character vectors

characterVector <- c("hello", "world", "DSI")
characterVector
typeof(characterVector)

# coercion
# converting one type into another
# 1. Automatic or implicit coercion - R decided
# 2. Explicit coercion - User decides 

mixVector <- c("hello", TRUE, 1L, 2.5, 4+1i) # implicit coercion
mixVector
typeof(mixVector)
length(mixVector)
?c
# implicit coercion rules
# (least complex) NULL < raw < logical < integer < double < complex < character 
# < list < expression (most complex)

mixVector2 <- c("hello", 1L, 2.5, 4+1i) 
typeof(mixVector2)

# explicit coercion - user specify
# as.*function

characterVector2 <- c("1", "2", "3")
typeof(characterVector2)

numericVector2 <- as.numeric(characterVector2)
numericVector2
typeof(numericVector2)

doubleVector2 <- as.double(characterVector2)
doubleVector2
typeof(doubleVector2)

integerVector2 <- as.integer(characterVector2)
integerVector2
typeof(integerVector2)

logicalVector2 <- as.logical(characterVector2)
logicalVector2

# tidyverse
# install.packages("tidyverse") # download
library(tidyverse) # attach
is_logical(logicalVector2) # TRUE
is_logical(integerVector2) # FALSE
is_integer(integerVector2)
is_vector(integerVector2)
?is_vector

# vector recycled

1:2 + 2:3

1:2 + 1:4 # shorter vector is recycled

1:2 + 1:5 # shorter vector is recycled; will be a warning


# naming vectors
exampleVector <- c(1:5)
exampleVector
names(exampleVector) # NULL
length(exampleVector)
names(exampleVector) <- c(letters[1:5])
letters # built in for alphabet letters
exampleVector
names(exampleVector) # "a" "b" "c" "d" "e"

namedVector <- c(a = 100, b = 200, c = 80)
namedVector
names(namedVector)
length(namedVector)

# accessing elements or subsetting a vector 
# functions in R are defined by round brackets
# accessing elements are defined by square brackets
namedVector[1]
namedVector["a"]
namedVector[1:2]
namedVector[-3]

# cannot mix integers positive and negative when subsetting
namedVector <- c(a = 100, b = 200, c = 80)
namedVector[c(1, -3)]
namedVector[c(1, 2)]
namedVector[-c(1, 2)]

namedVector[c("a", "b")]

# Lists - heterogeneous 
myList <- list(7.5, "list", TRUE, 4+1i, 4L)
myList
myList[[1]] # 7.5 first element
typeof(myList[[1]])
myList[[3]] # TRUE
typeof(myList[[3]])
str(myList)

# vectors - 1D
# tibbles (data.frames, matrices) - 2D; rows and columns
# tibbles columns have to be the same length; each column
# will have the same type of data

myTibble <- tibble(x = c(1:5),
                   y = letters[1:5], 
                   z = x + 2) # x is variable 
myTibble
dim(myTibble) # 5 x 3

# Break; return at 7.10 pm


myTibble2 <- tibble(x = c(1:5),
                    y = letters[1], 
                    z = x + 2) # x is variable 
myTibble2 # autoprint 
dim(myTibble) # 5 x 3


# strings in R
"Hello world"
'Hello world'

library(stringr)
str_length("Hello world") # 11; string length

userName <- c("Anjali", "Tia")
str_c("Welcome to webpage of: ", userName[2]) # combining

str_sub("This is a string", 7, 12) # subsetting
testDNA1 <- "TCGATTC"
testDNA2 <- "GCGGGCA"
str_c(testDNA1, str_sub(testDNA2, 4, 6)) # "TCGATTCGGC"

str_to_lower("UPPER")
str_to_upper("lower")
str_to_title("no capitalization")

# matching patterns
myString <- c("apple", "banana", "celementine", "dragonfruit")
str_view(myString, "an")
str_view_all(myString, "an")

# example
# install.packages("protr")
library(protr)
ls("package:protr")
?readFASTA
P00750 <- readFASTA(system.file("protseq/P00750.fasta", package = "protr"))
P00750
str_view_all(P00750, "CGA") # exact pattern


myString <- c("apple", "banana", "celementine", "dragonfruit")
str_view_all(myString, ".a.") # period indicate any character
str_view_all(myString, "^a") #  ^ matches to the start
str_view_all(myString, "a$") # $ define the end

myString2 <- c("apple", "banana", "celementine", "dragonfruit", 1:4)
myString2
str_view_all(myString2, "\\d") # \d need an escape character \; find digits

myString3 <- c("apple pie", "banana", "celementine", "dragonfruit", 1:4)
str_view_all(myString3, "\\s") # \s need an escape character \; find white space


# factors
# categorical data
library(forcats)
?forcats

monthsVector <- month.abb
typeof(monthsVector)
monthsVectorFactor <- factor(monthsVector)
monthsVectorFactor

monthsVectorFactor2 <- factor(c(month.abb, month.abb))
monthsVectorFactor2

# recode factors
fct_recode(monthsVectorFactor2, "December" = "Dec")


# dates 
library(lubridate)
?lubridate
today()
now()

date <- "20170102"
ymd(20170102) # "2017-01-02"
ydm(20170102) # "2017-02-01"

mdy("January 31st, 2017") # "2017-01-31"

dmy("31-Jan-2017") # "2017-01-31"

# y for year
# m for month
# d for date

# h hours
# m minutes
# s for seconds

dateTime <- now()
dateTimeFormatted <- ymd_hms(dateTime, tz = "EST")
month(dateTimeFormatted) # month
mday(dateTimeFormatted) # day of the month
yday(dateTimeFormatted) # day of year; how many days passed since
# year started


# Missing data
NA # Not applicable; not available; define missing data

vectorNumeric <- c(1:5, NA)
vectorNumeric
is.na(vectorNumeric) # detect if NA values are present 
vectorNumeric[is.na(vectorNumeric) == FALSE]

anyNA(vectorNumeric) # to check if any NA values are present

vectorNumeric2 <- c(1:5)
anyNA(vectorNumeric2)

sum(vectorNumeric) # NA
?sum
sum(vectorNumeric, na.rm = TRUE)  # 15

is.na(str_c(c(1, NA))) # FALSE, TRUE
is.na(paste(c(1, NA))) # FALSE, FALSE 

NA # Not available
NaN # Not a number
Inf # infiniti
-Inf

# Try exercises on slide 55


#### Class 03 ####
# Author: Anjali Silva
# Date: 2 July 2022

#.csv - comma separated values
# .sav - file from SPSS
# ads_raw.sav  - dataset analyzed

library(tidyverse) # attach; data science package
tidyverse_packages()
library(haven) # attach package for reading .sav file
?haven
ls("package:haven") # list all functions haven package

ads_data <- haven::read_sav(file = "ads_raw.sav") # error

# reading data
ads_data <- haven::read_sav(file = "data/ads_raw.sav") # read data
ads_data # 1,460 rows × 52 columns
dim(ads_data)
glimpse(ads_data) # to take a glimpse of data; shows all columns


# filtering
# permit to select rows based a specific criteria
glimpse(ads_data)
typeof(ads_data$Duration__in_seconds_)
anyNA(ads_data$Duration__in_seconds_) # FALSE
?filter
filteredData <- filter(ads_data, Duration__in_seconds_ < 100) # < is a logical operator
dim(ads_data) # 1460   52
dim(filteredData) #  41 52; filtered data
range(filteredData$Duration__in_seconds_) # 50 99; double checking 

# second example on filtering
ads_data$Gender
table(ads_data$Gender)
# filter the data to only contain the males
filterGender <- filter(ads_data, Gender == 1)
dim(filterGender) # 758  52
filterGender


# arranging 
# sort order of the table by a certain column

ads_data$Duration__in_seconds_ # going in random order
?arrange
arrangedData <- arrange(ads_data, Duration__in_seconds_)
arrangedData # 1,460 × 52
arrangedData$Duration__in_seconds_ # by default arrange uses ascending order

arrangedDataDescending <- arrange(ads_data, -Duration__in_seconds_)
arrangedDataDescending$Duration__in_seconds_ # descending order 
dim(arrangedDataDescending) # 1460   52

ads_data$Duration__in_seconds_ # original data
arrangedDataDescending$Duration__in_seconds_ # descending data


# selecting 
# allows us to select or remove columns
?select
ads_data$Duration__in_seconds_ # example
# selecting a column
selectColumn <- select(ads_data, Duration__in_seconds_)
selectColumn # 1,460 × 1

# remove a column
removeColumn <- select(ads_data, -Duration__in_seconds_)
ads_data # 1,460 × 52 original data
removeColumn # 1,460 × 51; removed one column


# pipe operator
# special operator that permit us to pass what we wrote on left to right,
# as the first argument
# %>% percent - greater than - percent
?`%>%`

filteredData <- filter(ads_data, Duration__in_seconds_ < 100) #  41 × 52
filteredDataPipe <- ads_data %>%  # using pipe
  filter(Duration__in_seconds_ < 100) # 41 × 52

ads_data %>%
  filter(Duration__in_seconds_ < 100) %>% # filtering data
  arrange(Duration__in_seconds_) %>% # ascending order
  select(Duration__in_seconds_) # selecting column
# result a tibble with size 41 x 52
# pipe help with readiability and reduce the amount of code to write


# mutating 
# can be used to create new columns or change existing columns

ads_data$Birthyear
library(lubridate)

ads_data2 <- ads_data %>%
              mutate(Birthyear_add_day = str_c(Birthyear, "07-01")) %>%
              mutate(Birthyear_add_day = as_datetime(Birthyear_add_day)) %>%
              select(EndDate, Birthyear, Birthyear_add_day)
dim(ads_data2) # 1,460 × 53; Birthyear_add_day
ads_data2$Birthyear_add_day

ads_data2 <- ads_data2 %>% 
              mutate(age = EndDate - Birthyear_add_day)
# 1,460 × 4; age is a new column
ads_data2

# Break; 10.07 will resume

# Summary
# provide summary of each column
summary(ads_data)


# Pulling
# Pulling permit to pull one variable/column for calculations, etc
ads_data %>%
  pull(Duration__in_seconds_)

ads_data$Duration__in_seconds_ # achieve same result

# mean
ads_data %>%
  pull(Duration__in_seconds_) %>% # pull this one column
  mean(na.rm = TRUE) # remove NA values and calculate mean
# 283.261

# median
ads_data %>%
  pull(Duration__in_seconds_) %>% # pull this one column
  median(na.rm = TRUE) # remove NA values and calculate mean
# 237

# range
ads_data %>%
  pull(Duration__in_seconds_) %>% # pull this one column
  range(na.rm = TRUE) # remove NA values and calculate mean
#  50 1575


# variance
ads_data %>%
  pull(Duration__in_seconds_) %>% # pull this one column
  var(na.rm = TRUE) # remove NA values and calculate mean
#  29487.81
?var


# summarise
ads_data %>%
  summarise(mean_time = mean(Duration__in_seconds_, na.rm = TRUE),
            sd_time = sd(Duration__in_seconds_, na.rm = TRUE))
# tibble with summary data is printed

# grouping
# categorical variables, we can group data
glimpse(ads_data)
ads_data %>% group_by(Gender) # group by Gender
?group_by

ads_data %>% 
  group_by(Gender) %>% # group data first this time 
  summarise(count = n(), # then summary
            mean_time = mean(Duration__in_seconds_, na.rm = TRUE),
            sd_time = sd(Duration__in_seconds_, na.rm = TRUE))
#  tibble: 3 × 4


# ces_2019_raw.csv; .csv = comma separated values
# R package cesR; CRAN package
# 37822 individuals, 620 variables; Canadian Election Study

library(readr)
?readr
ces_2019_raw <- readr::read_csv("ces_2019_raw.csv") # error 
ces_2019_raw <- readr::read_csv("data/ces_2019_raw.csv")
ces_2019_raw # 37,822 × 620
dim(ces_2019_raw)
glimpse(ces_2019_raw)

# visualization 
# ggplot2 package; ggplot
?ggplot2
library(ggplot2)

ces_2019_raw %>% pull(cps19_yob) %>% range(na.rm = TRUE)
# years are coded
# value 1 = 1920
# value 2 = 1921
# ...

ces_2019_raw %>%
  ggplot(aes(x = cps19_yob)) +
  geom_histogram() # hitogram is used to visualize

# data cleaning
CES_data <- ces_2019_raw %>%
              mutate(cps19_yob_fix = cps19_yob + 1919)
CES_data %>% pull(cps19_yob_fix)

# visualize  - improved x axis
CES_data %>% # new data 
  ggplot(aes(x = cps19_yob_fix)) + # new column
  geom_histogram()

# add a variable for age
CES_data <- CES_data %>%
  mutate(age = 2019 - cps19_yob_fix)
CES_data # 37,822 × 622; 1 new column age
dim(CES_data)

# visualization
CES_data %>% # new data 
  ggplot(aes(x = age)) + # new column
  geom_histogram()

# recode the gender variable
table(CES_data$cps19_gender) # 1 = male; 2 = females; 3 = other

CES_data %>%
  ggplot(aes(x = cps19_gender)) +
  geom_bar() # bar plot 

# recode
CES_data <- CES_data %>%
  mutate(cps19_gender_fix = factor(cps19_gender)) %>%
  mutate(cps19_gender_fix = fct_recode(cps19_gender_fix,
                                       "M" = "1",
                                       "F" = "2",
                                       "NB" = "3"))
CES_data %>% pull(cps19_gender_fix)

# visualize recoded data 
CES_data %>%
  ggplot(aes(x = cps19_gender_fix)) +
  geom_bar() # bar plot 

# fixing household counts
CES_data %>% pull(cps19_household) %>% range(na.rm = TRUE)
CES_data %>% 
  filter(cps19_household > 10) %>% # filter the data 
  arrange(-cps19_household) %>% # arrange data in ascending/desc
  pull(cps19_household) # pull this particular column
  
# correct
which(CES_data$cps19_household > 15) # some values are greater than 15
CES_data2 <- CES_data %>%
  mutate(cps19_household = ifelse(cps19_household > 15, # test
                                  NA, # return values if true 
                                  cps19_household)) # return value if false
CES_data2 %>% pull(cps19_household) %>% table()

# summarise data
# select data for only Ontario
CES_data %>%
  filter(cps19_province == "Ontario") # == to check for equality; logical operator
# =; equivalent <-
table(CES_data$cps19_province)
# filtering here can only be done using Coded provinces and not name of provinces

# slide 36/56 of lessons 04-manipulation deck

# 10 minute break now
# return 11.10 am
# Take up exercises from lesson 01 (slides 43-44), 
# 02 (slide 30), and 03 (slide 55)



