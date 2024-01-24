#### Preamble ####
# Purpose: Sorts the data from dataset in best form to read and then plots a graph based on said data
# Author: Rahul Gopeesingh
# Date: 24 January 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca
# License: MIT
# Pre-requisites: Completed the downloading and cleaning of data from previous scripts


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Read data ####
cleaned_shooting_data <- read_csv("outputs/data/cleaned_shooting_data.csv")

### Model data ####
data_to_graph <- cleaned_shooting_data %>%
  group_by(OccurredYear) %>%
  summarise(Shootings = sum(Count_))
#this sorts all the shootings in a year despite their locations and sums them together 

write_csv(
  x = data_to_graph,
  file = "outputs/models/data_to_graph_table.csv"
)
#we plot our graph here and rename the axis to more readable formats. 
data_to_graph |>
  ggplot(aes(x = factor(OccurredYear), y = Shootings)) +
  geom_col()+
  theme_minimal()+
  labs(x = "Year", y = "Number of Shootings in Toronto")

#### Save model ####
ggsave(file = "outputs/models/graph.pdf")



