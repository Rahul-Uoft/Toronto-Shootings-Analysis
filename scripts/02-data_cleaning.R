#### Preamble ####
# Purpose: Cleans the raw shooting data recorded by filtering the unnecessary columns
# Author: Rahul Gopeesingh
# Date: 23 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# License: MIT
# Pre-requisites: downloaded data(the 02 script)

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(tidyr)

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_shootings_data.csv")

#gets rid of all the unnecessary columns so we can focus on relevant data
cleaned_shooting_data <-
  raw_data |>
  select(OccurredYear, Count_)



#### Save data ####
write_csv(cleaned_shooting_data, "outputs/data/cleaned_shooting_data.csv")
#saves data locally so we can reference this in any document without having to run the cleaning process each time the document is rendered
