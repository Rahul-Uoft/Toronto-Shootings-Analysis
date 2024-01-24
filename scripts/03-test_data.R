#### Preamble ####
# Purpose: Tests the cleaned data in various ways. Helps ensure we are on track
# Author: Rahul Gopeesingh
# Date: 23 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# Pre-requisites: executed the 01 and 02 script ie download and clean the data



#### Workspace setup ####
library(tidyverse)


#### Test data ####

#test that only the desired years show up in the occurred year column
cleaned_shooting_data$OccurredYear |>
  unique() == c(2014, 2015, 2016, 2017, 2018, 2019)

#test that there are only 6 unique years in the occurred year column
cleaned_shooting_data$OccurredYear |>
  unique() |>
  length() == 6

#test that 2014 was the first year in which data appears
cleaned_shooting_data$OccurredYear |>
  min() == 2014

#test that every year has a number that is non-negative
cleaned_shooting_data$Count_ |>
  min() >= 0

