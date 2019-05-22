library(tidyverse)
library(data.table)


dt <- data.table(sex = c(rep("m",2), rep("f",2)),
                 treatment = rep(c("A", "B"), 2),
                 results = runif(4, 0, 100))

dt <- dt[sex == "m" | treatment == "A"]

complete(dt, sex, treatment, fill = "-1")

View(dcast(dt, sex ~ treatment, value.var = "results"))

