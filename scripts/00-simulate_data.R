#### Preamble ####
# Purpose: Simulates a data set for the total number of shootings in Toronto for the years 2014-2019 in different geographic locations
# Author: Rahul Gopeesingh
# Date: 23 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# License: MIT
# Pre-requisites: -



#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
# [...ADD CODE HERE...]

set.seed(42)

simulated_data_shootings <- 
  tibble(
    division = rep(c("D11","D12","D13","D14","D22","D23","D31","D32","D33","D41","D42","D43","D51","D52","D53","D54/55"), times = 6),
    year = c(rep("2014", times = 16),
             rep("2015", times = 16),
             rep("2016", times = 16),
             rep("2017", times = 16),
             rep("2018", times = 16),
             rep("2019", times = 16)),
    number_of_shootings =
      runif(96, 0, 70)
  )
simulated_data_shootings



