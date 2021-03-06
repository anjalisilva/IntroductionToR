#### Addition ####
# Author: Anjali Silva
# Date: 02 July 2022
# Purpose: Use this for analyzing ces_2019_raw.csv file
# on slide 36 and onwards of 04-manipulation_deck.PDF

# This is assuming your working directory is 
# set to DSI-IntroR, as shown in class
ces_2019_raw <- read_csv("data/ces_2019_raw.csv")

# data cleaning
CES_data <- ces_2019_raw %>%
  mutate(cps19_yob_fix = cps19_yob + 1919)

# 7 July 2022
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
         cps19_household = ifelse(cps19_household < 100, cps19_household, NA))

# [END]