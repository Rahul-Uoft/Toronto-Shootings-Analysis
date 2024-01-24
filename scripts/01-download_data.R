#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto about the shootings in Toronto
# Author: Rahul Gopeesingh
# Date: 23 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# License: MIT
# Pre-requisites: -


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
#downloads the data from the opendatatoronto website to ensure reproducibility 
raw_shootings_data <-
  list_package_resources("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a") |>
  filter(name == "Shooting Occurrences (2014-2019).csv") |>
  get_resource()
#### Save data ####
write_csv(
  x = raw_shootings_data,
  file = "inputs/data/raw_shootings_data.csv"
  )
#saves the data to this project 




         
