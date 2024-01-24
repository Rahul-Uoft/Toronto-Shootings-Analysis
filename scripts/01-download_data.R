#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####

raw_shootings_data <-
  list_package_resources("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a") |>
  filter(name == "Shooting Occurrences (2014-2019).csv") |>
  get_resource()
#### Save data ####
write_csv(
  x = raw_shootings_data,
  file = "inputs/data/raw_shootings_data.csv"
  )





         
