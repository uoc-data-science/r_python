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



##save column u and column v in a new table: 

#new_dataset <- select(source_dataset, cloumn_name_u, column_name_v) 

```

library(nycflights13)

library(tidyverse)

```

##explicitly choose columns:

```

select(flights, year, month, day)

```

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

```

select(flights, year:day)

```



##select all columns by excluding specific columns

```

select(flights, -(year:day))

```



### Python



Purpose: Use 'select()' to choose a subset of the whole / existing dataset based on the needed columns.<br>

This is useful in order to narrow down a big dataset to the elemntary data. The narrowed dataset will contain only the needed data.<br>

Documentation:
https://pandas.pydata.org/pandas-docs/stable/getting_started/comparison/comparison_with_r.html#transforming<br>
Good help, tutorials:



1. https://medium.com/dunder-data/selecting-subsets-of-data-in-pandas-6fcd0170be9c



Working example (asap):



```

import pandas as pd

import numpy as np

df = pd.read_csv('data/sample_data.csv', index_col=0)



#one column

df['food']



#multiple columns



df[['color', 'food', 'score']]

```

---

## `filter`


### R

Purpose:
Official documentation:
Good help, tutorials:

1. ...
2. ...
3. ...

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

## `arrange`


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

Purpose:
Official documentation:
Good help, tutorials:

1. ...
2. ...
3. ...

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
