#### Preamble ####
# Purpose: Simulates a data set for the total number of shootings in Toronto for the years 2014-2019
# Author: Rahul Gopeesingh
# Date: 23 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# License: MIT
# Pre-requisites: -



#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(42)
#use set seed to ensure reproducibility of project

#simulate the data as it would appear in the given dataset. This is because they are generally sorted by division
simulated_data_shootings <- 
  tibble(
    #first we simulate a column for the divisions and repeat them for each of the 6 years
    division = rep(c("D11","D12","D13","D14","D22","D23","D31","D32","D33","D41","D42","D43","D51","D52","D53","D54/55"), times = 6),
    #next we simulate the column for the years in which each year must appear once for each division for a total of 16 times
    year = c(rep("2014", times = 16),
             rep("2015", times = 16),
             rep("2016", times = 16),
             rep("2017", times = 16),
             rep("2018", times = 16),
             rep("2019", times = 16)),
    #finally we simulate the number of shooting using a unifrom distribution for each entry. This simulation is probably inaccurate but still results in data that should have the same qualities of the actual dataset with the exception of the values themselves
    number_of_shootings =
      runif(96, 0, 70)
  )



#we save the simulation locally so we can access the simulated data without having to run the simulation again.
write_csv( 
  x = simulated_data_shootings,
  file = "inputs/data/simulated_dataset_shootings.csv"
  )



#### Test simulated data ####

#test that only the desired years show up in the occurred year column
simulated_data_shootings$year |>
  unique() == c(2014, 2015, 2016, 2017, 2018, 2019)

#test that there are only 6 unique years in the occurred year column
simulated_data_shootings$year |>
  unique() |>
  length() == 6

#test that 2014 was the first year in which data appears
simulated_data_shootings$year |>
  min() == 2014

#test that every year has a number that is non-negative
simulated_data_shootings$number_of_shootings |>
  min() >= 0



