![uzk_logo](uzk.png)

# Data manipulation in Python and R

We translate important verbs from the `tiyverse` to their closest possible Python equivalents.

> The added value lies not so much in reproducing the R documentation, but to find the matching R and Python functions that should do the exact same manipulation.

_Purpose_: describe the problem that the verb tries to solve. How does it approach the problem/ how is it solved?

_Official documentation_: Please link to the official documentation, if available.

_Good help, tutorials:_ Please link explanations, examples, discussions, that you found helpful.

_Working examples_ should be self-contained and as short as possible (asap). The R and Python examples should do the exact same thing. Ideally, we can copy-paste the code into R or Python and it will run as expected. Load data from libraries to reach this goal (best case), or provide the data in the repo and link to it (really required???). Use standard datasets if possible (mtcars, diamonds, ...).

---

## `select`



### R



Purpose: Use 'select()' to choose a subset of the whole / existing dataset based on the needed columns.<br>

This is useful in order to narrow down a big dataset to the elemntary data. The narrowed dataset will contain only the needed data.<br>

Official documentation:
https://www.rdocumentation.org/packages/dplyr/versions/0.5.0/topics/select<br>
Good help, tutorials:



1. https://r4ds.had.co.nz/transform.html#select



Working example (asap):

``` R
##save column u and column v in a new table: 

#new_dataset <- select(source_dataset, cloumn_name_u, column_name_v) 
library(nycflights13)
library(tidyverse)

##explicitly choose columns:
select(flights, year, month, day)

## Leads to the output:

# A tibble: 336,776 x 3
    year month   day
   <int> <int> <int>
 1  2013     1     1
 2  2013     1     1
 3  2013     1     1
 4  2013     1     1
 5  2013     1     1
 6  2013     1     1
 7  2013     1     1
 8  2013     1     1
 9  2013     1     1
10  2013     1     1
# . with 336,766 more rows

##from-to selection
select(flights, year:day)

##select all columns by excluding specific columns
select(flights, -(year:day))
```



### Python



Purpose: Use 'select()' to choose a subset of the whole / existing dataset based on the needed columns.<br>

This is useful in order to narrow down a big dataset to the elemntary data. The narrowed dataset will contain only the needed data.<br>

Documentation:
https://pandas.pydata.org/pandas-docs/stable/getting_started/comparison/comparison_with_r.html#transforming<br>
Good help, tutorials:



1. https://medium.com/dunder-data/selecting-subsets-of-data-in-pandas-6fcd0170be9c
2. https://www.youtube.com/watch?v=iaziBEhdyRk



Working example (asap):



```

import pandas as pd

import numpy as np

df = pd.read_csv('data/sample_data.csv', index_col=0)

#one column
df['food']

#multiple columns
df[['color', 'food', 'score']]

#select rows from:until
df[2:7]

#select rows :until / from:
df[:7] / df[2:]

#select every 10th row
df[::10]

#select first 5 rows / column A
df.loc[0:5, 'A']

#instead of loc you can use iloc if you want to get eg 1 row
df.eloc[0:5, 0]

#get all rows where column A is smaller 2
df.loc[df.loc[:, 'A'] < 2]

#lambda functions for selecting can be wrote in one line
df.loc[lambda d: (d.A > 7) & (d.B < 4)]

```

---

## `filter`


### R

Purpose: Use "filter" to find rows/cases meeting certain conditions.<br>
Official documentation: https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/filter<br>
Good help, tutorials: 

1. [R for Data Science](https://r4ds.had.co.nz/transform.html#filter-rows-with-filter)
2. https://www.guru99.com/r-select-filter-arrange.html#2

Working example (asap):

```R
library(tidyverse)
library(ggplot2)

# filter for cars with city miles per gallon less than 20
greenCars <- filter(mpg, cty < 20)
print(greenCars)
```

### Python

Purpose:  Use "filter" to find rows/cases meeting certain conditions.<br>
Documentation: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.filter.html<br>
Good help, tutorials:

1. https://cmdlinetips.com/2018/02/how-to-subset-pandas-dataframe-based-on-values-of-a-column/

Working example (asap):

```Python
from plotnine.data import mpg

filtered = mpg[mpg.cty < 20]
print(filtered)
```

---

## `arrange`


### R

Purpose: When the dataset is unordered using **arrange()** will reorder rows by values of one or more columns.<br><br>
Official documentation: https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/arrange <br><br>
Good help, tutorials:

1. https://www.datanovia.com/en/lessons/reorder-data-frame-rows-in-r/
2. https://www.youtube.com/watch?v=mcowyd3sgSA
3. http://www.datasciencemadesimple.com/sorting-dataframe-r-using-dplyr/ <br><br>


Working example (asap):

```R
library(dplyr)
iris <- read.csv("iris.csv")

# Reorder rows by sepal.length in *ascending* order:
iris_sorted_asc <- arrange(iris, sepal.length)

# Reorder rows by sepal.length in *descending* order using '-' or 'desc()':
iris_sorted_desc <- arrange(iris, desc(sepal.length))
iris_sorted_desc <- arrange(iris, -sepal.length)

# Additionally it can be sorted by *more than one* value.
# Simply add a new column to the expression:
iris_sorted_by_multiple_values <- arrange(iris, desc(sepal.length), sepal.width)
```

### Python

Purpose: When the dataset is unordered using **sort_values()** will reorder rows by values of one or more columns.<br><br>
Documentation: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.sort_values.html <br><br>

Good help, tutorials:

1. https://datatofish.com/sort-pandas-dataframe/
2. https://stackoverflow.com/questions/37787698/how-to-sort-pandas-dataframe-from-one-column
3. https://www.geeksforgeeks.org/python-pandas-dataframe-sort_values-set-1/ <br><br>

Working example (asap):
```Python
import pandas as pd

path = "./iris.csv"
df = pd.read_csv(path, sep=",")

# Reorder rows by sepal.length in *ascending* order:
df = df.sort_values(by=['sepal.length'], ascending=[True])

# Reorder rows by sepal.length in *descending* order:
df = df.sort_values(by=['sepal.length'], ascending=[False])

# Reorder rows by *more than one* value.
# Add a new column and its order orientation to the expression:
df = df.sort_values(by=['sepal.length', 'sepal.width'], ascending=[True, False])

# If NAs should come first add *na_position*:
df = df.sort_values(by=['sepal.length', 'sepal.width'], ascending=[True, False], na_position= 'first')
```

---

## `mutate`


### R

Purpose: Put functions on existing columns and add new columns including the result of the applied function. If you additionally want to drop the old variable/column, use 'transmute'.<br>
Official documentation: https://www.rdocumentation.org/packages/dplyr/versions/0.5.0/topics/mutate<br>
Good help, tutorials: 

1. https://r4ds.had.co.nz/transform.html#add-new-variables-with-mutate
1. https://cran.r-project.org/web/packages/dplyr/dplyr.pdf - page 45
1. https://youtu.be/2dFpblO7MB8

Working example (asap):

```R
mutate(mtcars, displ_l = disp / 61.0237)
transmute(mtcars, displ_l = disp / 61.0237)
```

### Python

Purpose: Put functions on existing columns and add new columns including the result of the applied function.<br>
Documentation: https://pandas.pydata.org/pandas-docs/stable/getting_started/comparison/comparison_with_r.html#transforming<br>
Good help, tutorials:

1. https://stackoverflow.com/questions/28417293/sample-datasets-in-pandas
1. https://vincentarelbundock.github.io/Rdatasets/datasets.html
1. ...

Working example (asap):

```Python
#https://vincentarelbundock.github.io/Rdatasets/csv/datasets/mtcars.csv
import pandas as pd

mtcars= pd.read_csv("https://vincentarelbundock.github.io/Rdatasets/csv/datasets/mtcars.csv")
mtcars = mtcars.assign(displ_l = mtcars["disp"] / 61.0237)

print(mtcars)
```

---

## `summarise`


### R

Purpose: Create one or more scalar variables summarizing the variables of an existing table. Tables with groups created by 'group_by()' will result in one row in the output for each group. Tables with no groups will result in one row.<br>
Official documentation: https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/summarise
Good help, tutorials:

1. https://dplyr.tidyverse.org/reference/summarise.html
2. ...
3. ...

Working example (asap):

```R
install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

flights %>%
  summarize(sum_dep_delay = sum(dep_delay, na.rm = T),
            avg_dep_delay = mean(dep_delay, na.rm = T) )


```

### Python

Purpose:
Documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```Python
import pandas as pd
nyc = pd.read_csv('https://raw.githubusercontent.com/ismayc/pnwflights14/master/data/flights.csv')
nyc.head()
nyc_grouped = nyc.groupby(['year', 'month', 'day']).sum()
nyc_grouped.head(50)
```

---
## `group_by`

### R

Purpose:
Official documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```R
flights %>%
  group_by(year, month, day) %>%
  summarize(sum_dep_delay = sum(dep_delay, na.rm = T),
            avg_dep_delay = mean(dep_delay, na.rm = T) )

```

### Python

Purpose:
Documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```Python
```

---

## `gather`


### R

Purpose: Gather takes multiple columns and collapses into key-value pairs, duplicating all other columns as needed. You use gather() when you notice that you have columns that are not variables.

Official documentation: [R Documentation](https://www.rdocumentation.org/packages/tidyr/versions/0.8.3/topics/gather)
Good help, tutorials:

1. [Stats Education](http://statseducation.com/Introduction-to-R/modules/tidy%20data/gather/)

Working example (asap):

```R
library(tidyverse)

# prepare ungathered data set
product <- c("Product A", "Product B", "Product C")
customerA <- c(6886, 5486, 1865)
customerB <- c(4896, 9865, 3154)

# ungathered data set has multiple columns with sales numbers
ungathered_data <- data.frame(product, customerA, customerB)

# gathered data set has only one column with sales numbers
gathered_data <- gather(data = ungathered_data, "customer", "sales", 2:3)

print(gathered_data)
```

### Python

Purpose: Unpivots a DataFrame from wide format to long format, optionally leaving identifier variables set.

This function is useful to massage a DataFrame into a format where one or more columns are identifier variables (id_vars), while all other columns, considered measured variables (value_vars), are “unpivoted” to the row axis, leaving just two non-identifier columns, ‘variable’ and ‘value’.

Documentation: [Pandas Documentation](http://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.melt.html#pandas.melt)
Good help, tutorials:

1. [Gather / Melt Comparison](http://connor-johnson.com/2014/08/28/tidyr-and-pandas-gather-and-melt/)

Working example (asap):

```Python
import pandas as pd

# prepare ungathered data set
# ungathered data set has multiple columns with sales numbers
ungathered_data = pd.DataFrame({'product': {0: 'A', 1: 'B', 2: 'C'},
                    'customer A': {0: 6886, 1: 5486, 2: 1865},
                    'customer B': {0: 4896, 1: 9865, 2: 3154}})

# gathered data set has only one column with sales numbers
gathered_data = pd.melt(ungathered_data, var_name= "customer", value_name= "sales", id_vars = ['product'], value_vars= ['customer A', 'customer B'])

print(gathered_data)
```

---



## `spread`


### R

Purpose:
Official documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```R
```

### Python

Purpose:
Documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```Python
```

---


##  `separate`


### R

Purpose:
Official documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```R
```

### Python

Purpose:
Documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```Python
```

---

##  `unite`

### R

Purpose:
Official documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```R
```

### Python

Purpose:
Documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```Python
```

---

## `mutating joins`

### R

Purpose: Standard join (inner, full, left, right) --> augment a data frame with information from another data frame<br />
Official documentation: https://dplyr.tidyverse.org/reference/join.html<br />
Good help, tutorials:

1. https://stat545.com/bit001_dplyr-cheatsheet.html
2. ...
3. ...

Working example (asap):

```R
employee <- c('John Doe','Peter Gynn','Jolie Hope')
salary <- c(21000, 23400, 26800)
employ <- data.frame(employee, salary)

employee <- c('John Doe','Peter Gynn','Max Mustermann')
size <- c(220, 130, 160)
employ2 <- data.frame(employee, size)

#join on equally named columns
employInner <- inner_join(employ, employ2)
employFull <- full_join(employ, employ2)
employLeft <- left_join(employ, employ2)
employRight <- right_join(employ, employ2)
```

### Python

Purpose: Standard join (inner, full, left, right) --> augment a data frame with information from another data frame<br />
Documentation: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.merge.html<br />
Good help, tutorials:

1. https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html
1. https://jakevdp.github.io/PythonDataScienceHandbook/03.07-merge-and-join.html
1. ...

Working example (asap):

```Python
import pandas as pd

employ = pd.DataFrame({'employee': ['John Doe','Peter Gynn','Jolie Hope'], 'salary': [21000, 23400, 26800]})
employ2 = pd.DataFrame({'employee': ['John Doe','Peter Gynn','Max Mustermann'], 'size': [220, 130, 160]})

employInner = pd.merge(employ, employ2,  how='inner')
employOuter = pd.merge(employ, employ2,  how='outer')
employLeft = pd.merge(employ, employ2,  how='left')
employRight = pd.merge(employ, employ2,  how='right')
```
---

## `filtering joins`


### R

Purpose:
Official documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```R
```

### Python

Purpose:
Documentation:
Good help, tutorials:

1. ...
1. ...
1. ...

Working example (asap):

```Python
```
