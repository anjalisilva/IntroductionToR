#### Class 01 ####
# Author: Anjali Silva
# Date: 27 June 2022
# Lessons: 00-Intro; 01-Hello world; 02-Work Practices

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
# Lesson: 03-Data in R

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
# Lesson: 04-Data manipulation

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

# slide 36
library(readr)
ces_2019_raw <- readr::read_csv("data/ces_2019_raw.csv")

# data cleaning
CES_data <- ces_2019_raw %>%
  mutate(cps19_yob_fix = cps19_yob + 1919)

CES_data %>%
  filter(cps19_province == "Ontario") 

CES_data %>% select(cps19_province)

# Modified on 7 July 2022
# Code taken from link:
# https://github.com/anjalisilva/IntroductionToR/blob/main/Lessons-Rscripts/slide36_Lesson04-Manipulation.R
CES_data <- CES_data %>%
  filter(cps19_Q_TotalDuration < 60 * 60) %>%
  mutate(cps19_province = fct_recode(factor(cps19_province),
                                     "Alberta" = "14",
                                     "British Columbia" = "15", 
                                     "Manitoba" = "16",
                                     "New Brunswick" = "17",
                                     "Newfoundland and Labrador" = "18",
                                     "Nova Scotia" = "20",
                                     "Nunavut" = "21",
                                     "Ontario" = "22",
                                     "Northwest Territories" = "19",
                                     "Prince Edward Island" = "23",
                                     "Quebec" = "24",
                                     "Saskatchewan" = "25",
                                     "Yukon" = "26"),
         cps19_votechoice = fct_recode(factor(cps19_votechoice),
                                       "Liberal Party" = "1",
                                       "Conservative Party" = "2", 
                                       "NDP" = "3",
                                       "Bloc Québécois" = "4",
                                       "Green Party" = "5",
                                       "People's Party" = "6",
                                       "Another party" = "7",
                                       "Don't know/ Prefer not to answer" = "9"),
         cps19_fed_donate = fct_recode(factor(cps19_fed_donate),
                                       "Yes" = "1",
                                       "No" = "2", 
                                       "Don't know/ Prefer not to answer" = "3"),
         cps19_vote_2015 = fct_recode(factor(cps19_vote_2015),
                                      "Liberal Party" = "1",
                                      "Conservative Party" = "2", 
                                      "NDP" = "3",
                                      "Bloc Québécois" = "4",
                                      "Green Party" = "5",
                                      "Another party" = "6",
                                      "Don't know/ Prefer not to answer" = "7"),
         cps19_news_cons = fct_recode(factor(cps19_news_cons),
                                      "0 minutes" = "1",
                                      "1-10 minutes" = "2", 
                                      "11-30 minutes" = "3",
                                      "31-60 minutes" = "4",
                                      "Between 1 and 2 hours" = "5",
                                      "More than 2 hours" = "6",
                                      "Don't know/ Prefer not to answer" = "7"),
         cps19_gender = fct_recode(factor(cps19_gender),
                                   "M" = "1",
                                   "F" = "2", 
                                   "NB" = "3"),
         cps19_spend_educ = fct_recode(factor(cps19_spend_educ),
                                       "Spend less" = "1",
                                       "Spend about the same as now" = "2", 
                                       "Spend more" = "3",
                                       "Don't know/ Prefer not to answer" = "4"),
         cps19_prov_gov_sat = fct_recode(factor(cps19_prov_gov_sat),
                                         "Very satisfied" = "1",
                                         "Fairly satisfied" = "2",
                                         "Not very satisfied" = "3",
                                         "Not at all satisfied" = "4",
                                         "Don't know/prefer not to answer" = "5"),
         cps19_prov_id = fct_recode(factor(cps19_prov_id),
                                    "Liberal" = "281",
                                    "NDP" = "282",
                                    "Green" = "283",
                                    "Progressive Conservative" = "292",
                                    "Another party" = "295",
                                    "None" = "296",
                                    "Don't know/prefer not to answer" = "297"),
         cps19_union = fct_recode(factor(cps19_union),
                                  "Yes" = "1",
                                  "No" = "2", 
                                  "Don't know/ Prefer not to answer" = "3"),
         cps19_bornin_canada = fct_recode(factor(cps19_bornin_canada),
                                          "Yes" = "1",
                                          "No" = "2", 
                                          "Don't know/ Prefer not to answer" = "3"),
         cps19_income_number = ifelse(cps19_income_number > 1000000,
                                      NA,
                                      cps19_income_number),
         cps19_turnout_2015 = fct_recode(factor(cps19_turnout_2015),
                                         "Yes" = "1",
                                         "No" = "2",
                                         "Not eligible to vote in last election" = "3",
                                         "Don't know/ Prefer not to answer" = "4"),
         cps19_household = ifelse(cps19_household < 100, cps19_household, NA)
  )

CES_data %>%
  filter(cps19_province == "Ontario")  # this will now work

#### Class 04 ####
# Author: Anjali Silva
# Date: 4 July 2022
# Lesson: 05-Data wrangling


library(tidyverse) # attach package tidyverse
library(readr)
ls("package:readr") # to see all functions in readr
?read_csv
# called providing an inline csv file - enter data yourself

read_csv("a, b, c
         1, 2, 3
         4, 5, 6") # creates A tibble: 2 × 3

# option to skip lines

read_csv("First line is meta data
         second line is meta data
         a, b, c
         1, 2, 3
         4, 5, 6") # creates A tibble: 4 × 1

read_csv("First line is meta data
         second line is meta data
         a, b, c
         1, 2, 3
         4, 5, 6", skip = 2) # creates A tibble: 2 × 3

# comments can be ignored
read_csv("# First line is meta data
         # second line is meta data
         # a, b, c
         1, 2, 3
         4, 5, 6", comment = "#", col_names = FALSE)
# A tibble: 2 × 3 results

# writing data
write_csv()

# read an example dataset
challengeData <- read_csv(readr_example("challenge.csv"))
challengeData
glimpse(challengeData)

write_csv(x = challengeData, file = "data/challengeData.csv")

# R's binary format is called RDS
write_rds(x = challengeData, file = "data/challengeData.rds")
readRDSChallenge <- read_rds("data/challengeData.rds")
readRDSChallenge 


# pivot - tidying data 
# 3 rules - slide 11
# 1. each variable must have its own column
# 2. Each observation must have its own row
# 3. Each value must have its own cell

# pivot_longer() and pivot_wider()
wideData <- tibble(
  year = c(2017, 2018, 2019, 2020, 2021, 2022),
  milo = c(4, 6.3, 8, 7.9, 8.1, 8.1),
  kitty = c(15.6, 15.9, 14, 12.2, 10.9, 9.9))
wideData

# pivot_longer()
?pivot_longer
longData <- wideData %>%
                pivot_longer(cols = c("milo", "kitty"),
                             names_to = "cat",
                             values_to = "weight")
longData # A tibble: 12 × 3

# pivot_wider()
library(tidyr)
?table2
table2

table2 %>%
  pivot_wider(names_from = "type", # will work with or without quotes
              values_from = "count")
# A tibble: 6 × 4

# joining 
# mutiple tables are called relational data

# 2 types of joins
# 1. mutating joins
#   join tables based on a shared key or variable, to 
#   bring together data or variables
#   4 kinds: inner, outer: left, right and full
#   done using dplyr package 
#   slide 16

# let's take 5 minute break until 7.08pm
# visit line 758

# 2 toy datasets
employment <- tibble(year = c(1990, 1991, 1992, 1994),
                     rate = c(0.05, 0.02, 0.04, 0.02))
employment # A tibble: 4 × 2

housing <- tibble(date = c(1991, 1992, 1993, 1994, 1995),
                  rate = c(0.89, 0.6, 0.75, 0.88, 0.9))
housing # A tibble: 5 × 2

# key will be year or date

# inner join
employment %>%
  inner_join(housing, by = c("year" = "date"))
# A tibble: 3 × 3

# outer: left
employment %>%
  left_join(housing, by = c("year" = "date"))
#  A tibble: 4 × 3

# outer: right
employment %>%
  right_join(housing, by = c("year" = "date"))
# A tibble: 5 × 3

# outer: full
employment %>%
  full_join(housing, by = c("year" = "date"))
# A tibble: 6 × 3


# 2. filtering joins
# i. semi joins = keep all observations in x that match y
# treat x = employment and y = housing
employment %>%
  semi_join(housing, by = c("year" = "date"))
# A tibble: 3 × 2

# ii. anti join = drops all observations in x that match y
employment %>%
  anti_join(housing, by = c("year" = "date"))
# A tibble: 1 × 2


# data.table 
# A CRAN package 
# link: https://cran.r-project.org/web/packages/data.table/index.html
install.packages("data.table") # download package
library("data.table") # attach

data(package="datasets") # to access built-in datasets in R
library(help="datasets")
?iris
dim(iris) # 150   5
head(iris)
glimpse(iris)

dtIris <- as.data.table(iris)
dtIris
tables()

# Aside
install.packages("pryr")
library(pryr)
pryr::mem_used() # to determine the memory usage of current R session
# 169 MB

ls() # list all objects of current R session

pryr::object_size(dtIris) # show object size; 7.51 kB
# --

sapply(dtIris, typeof) # take a look at data
sapply(dtIris, class) 
?sapply
?typeof
glimpse(dtIris)

# datatable[i, j, k]
# i = selected/filtered/subset or reorder rows
# j = calculations/ for selecting columns
# k = grouping by 

# start with i - subesetting rows
dtIris[Petal.Width > 0.5]

# look at j
dtIris[, Species] # select this column; return a vector
class(dtIris[, Species]) # returned as vector of factors
dtIris[, list(Species)] # select column and return as a data table
class(dtIris[, list(Species)]) # now returned as a data table

dtIris[, .(Petal.Length, Species)] # returns a data table
dtIris[, c(Petal.Length, Species)] # returns a vector

dtIris[, Petal.Length > 2] # returns a logical vector 
dtIris[, sum(Petal.Length > 2)] # 100; 100 cases with petal length > 2
dtIris[, sum((Petal.Length + Petal.Width) > 2)] # 105

# .N ; holds the number of observations
dtIris[Species == "setosa", .N] # 50 

# look at k
# counting number in each Species group
dtIris[,, ] # the entire data table
dtIris[, .N, ] # the number of rows 150
dtIris[, .(.N), ] # the number of rows 150 in data.table format
dtIris[, , by = Species] # Warning
dtIris[, .(.N), by = Species] # count after grouping by species 
dtIris[, .(.N), by = .(Species)]



#### Class 05 ####
# Author: Anjali Silva
# Date: 7 July 2022
# Lesson: 06-Programming

# writing own functions

# write a simple function that takes three numeric
# values and return their sum
sum() # built-in function should be used when possible

sumThreeNumbers <- function(valueOne = 0, valueTwo = 0, valueThree = 0) {
  # statements
  valueSum <- sum(valueOne, valueTwo, valueThree, na.rm = TRUE)
  return(valueSum)
}
sumThreeNumbers # calling the function or invoking it
sumThreeNumbers(valueOne = 1, valueTwo = 2, valueThree = 3)
sumThreeNumbers(1, 2, 3) # 6
sumThreeNumbers(4, 5, 6) # 15

sumThreeNumbers(1, NA, 0) # NA
sumThreeNumbers(1, NA, 0) # 1

sumThreeNumbers(1) #  Error
sumThreeNumbers(1, 2) # Error

sumThreeNumbers(1) # 1
sumThreeNumbers(1, 2) # 3

# Loops
# 1. for loops
# 2. while loops

# for loops
print(1)
print(2)
print(3)
print(4)
print(5)

for (i in 1:100) {
  print(i)
}

data(package = "datasets") # to access datasets in r
?iris
dim(iris)
# obtain petal to sepal ratio using length for all observations
iris$Petal.Length[1]/iris$Sepal.Length[1]
iris$Petal.Length[2]/iris$Sepal.Length[2]

irisModify <- iris # to modify the dataset
dim(irisModify) # 150 5
library(tidyverse)
glimpse(irisModify)
nrow(irisModify) # 150
for (i in 1:nrow(irisModify)) {
  cat("\n i =", i) # print value of i
  irisModify$petalToSepalRatio[i] <- 
    irisModify$Petal.Length[i]/irisModify$Sepal.Length[i] # calculate ratio
}
glimpse(irisModify)
dim(irisModify) # 150   6
head(irisModify)

# while loop
i = 1
while(i <= 10) { # this is the condition
  # print(i * 5) 
  cat("\n Value of i is", i, "and calculation output", i * 5)
  i <- i + 1 # need to update i each time 
}


# If/else logic 
# check for conditions 
if(condition) {
  # statement 
}

xValue <- 5
xValue <- -1
if(xValue > 0) { # condition 
  cat("\n A positive number")
}

# if else
if(condition) {
  # statement 
} else {
  # statement 
}

xValue <- -3
if(xValue > 0) {
  cat("\n A positive number")
} else {
  cat("\n Not a positive number")
}

# if, else if, else
if(condition) {
  # statement 
} elif(condition2) { 
  # statement 
} else {
  # statement 
}

xValue <- -3
xValue <- 0
if(xValue > 0) {
  cat("\n A positive number")
} else if(xValue < 0) {
  cat("\n Negative number")
} else {
  cat("\n It is zero")
}

# Take 5 minute break, be back by 7.09pm
sumThreeNumbers <- function(valueOne = 0, valueTwo = 0, valueThree = 0) {
  # statements
  if(typeof(valueOne) == "character") {
    stop("\n valueOne argument should not be character, but a numeric value")
  }
  valueSum <- sum(valueOne, valueTwo, valueThree, na.rm = TRUE)
  return(valueSum)
}
sumThreeNumbers # 
sumThreeNumbers("a", 1, 2)


# conditions
# conditions OR or AND
library(tidyverse)
xValues <- 1:5L # an atomic vector
xValues <- list(1:5L) # list 
if(is_vector(xValues) == TRUE && is_atomic(xValues) == TRUE) { # this is condition &&
  cat("\n An atomic vector")
}

if(is_vector(xValues) == TRUE || is_atomic(xValues) == TRUE) { # this is condition &&
  cat("\n A vector") 
}

# R pipe is %>%
# keyboard pipe is |

# case when
?case_when

library(dplyr)
grades <- tibble(grade = c(94, 87, 73, 60, 50))

grades %>% 
  mutate(letter = case_when(grade >= 80 ~ "A", # output if condition is true
                            grade >= 70 ~ "B", # output if condition is true
                            TRUE ~ "F")) # output if condition is false
# order of statements matter 
grades %>% 
  mutate(letter = case_when(grade >= 70 ~ "B", # output if condition is true
                            grade >= 80 ~ "A", # output if condition is true
                            TRUE ~ "F")) # output if condition is false

# purrr - CRAN package for functional programming 
library(purrr)
?map

mtcars
?mtcars
glimpse(mtcars)
# I want to calculate mean of each column, we can do this using 
# a loop
for (i in 1:ncol(mtcars)) {
  outputValue <- round(mean(mtcars[, i]), 2)
  cat("\n mean of column i=", i, "is ", outputValue)
}

mtcars %>% map_dbl(mean) %>% round(2) # return a vector of doubles
mtcars %>% map(mean) # retuns a list

?iris
iris # do try out for iris dataset, calculations via map function

# Simulation 
# Uniform distribution
# Normal distribution
# Poisson distribution

?runif
runif(5)
plot(runif(5))

set.seed(seed = 1234)
plot(runif(5))

runif(5, min = 10, max = 20)


?rnorm
rnorm(10, 5, 1)

set.seed(seed = 1234)
plot(rnorm(10, 5, 1))


?rpois
rpois(10, lambda = 5)

?sample
sampleLetters1 <- sample(x = letters)
set.seed(1818)
# letters will be repeated
sample(x = c("a", "b", "c"),
       size = 10,
       replace = TRUE)

# no letter will be repeated
sample(x = letters,
       size = 10,
       replace = FALSE) # no replacing

# simulate a dataset
set.seed(1234)
simulatedData <- tibble(X = runif(10, 0, 20),
                        Y = 3 * X + rnorm(10, 0, 1))

simulatedData
dim(simulatedData) # 10 2 

plot(simulatedData)

# using ggplot2 package that comes with tidyverse
simulatedData %>%
  ggplot(aes(x = X, y = Y)) +
  geom_point()

# Try the exercise from slide 34
# Revisit code from lesson 04 (Class 3), CES_data
# Modified script lines 694 to 780 by modifying CES_data



