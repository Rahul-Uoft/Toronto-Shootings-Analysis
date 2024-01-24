#### Preamble ####
# Purpose: Cleans the raw shooting data recorded by filtering the unnecessary columns
# Author: Rahul Gopeesingh
# Date: 23 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# License: MIT
# Pre-requisites: -

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(tidyr)

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_shootings_data.csv")
head(raw_data)
cleaned_shooting_data <-
  raw_data |>
  select(OccurredYear, Count_)


#### Save data ####
write_csv(cleaned_shooting_data, "outputs/data/cleaned_shooting_data.csv")
