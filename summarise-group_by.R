
install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

write.csv(flights, file = "flights.csv")

flights %>%
  summarize(total_dep_delay = sum(dep_delay, na.rm = T),
            avg_dep_delay = mean(dep_delay, na.rm = T) )

