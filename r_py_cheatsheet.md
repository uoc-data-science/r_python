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

Purpose: When the dataset is unordered using **arrange()** will reorder rows by values of one or more columns.<br><br>
Official documentation: https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/arrange <br><br>
Good help, tutorials:

1. https://www.datanovia.com/en/lessons/reorder-data-frame-rows-in-r/
2. https://www.youtube.com/watch?v=mcowyd3sgSA
3. http://www.datasciencemadesimple.com/sorting-dataframe-r-using-dplyr/ <br><br>


**Examples:**
<br><br>
```R
library(dplyr)

iris = read.csv("iris.csv")
```
<br>
Reorder rows by sepal.length in **ascending** order:
```R
iris_sorted_asc = arrange(iris, sepal.length)
```
<br>
Reorder rows by sepal.length in **descending** order using **-** or **desc()**:
```R
iris_sorted_desc = arrange(iris, desc(sepal.length))
```

```R
iris_sorted_desc = arrange(iris, -sepal.length)
```
<br>
Additionally it can be sorted by **more than one** value.
Simply add a new column to the expression:
```R
iris_sorted_by_multiple_values = arrange(iris, desc(sepal.length), sepal.width)
```

### Python

Purpose: When the dataset is unordered using **sort_values()** will reorder rows by values of one or more columns.<br><br>
Documentation: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.sort_values.html <br><br>

Good help, tutorials:

1. https://datatofish.com/sort-pandas-dataframe/
2. https://stackoverflow.com/questions/37787698/how-to-sort-pandas-dataframe-from-one-column
3. https://www.geeksforgeeks.org/python-pandas-dataframe-sort_values-set-1/ <br><br>

**Examples:**
<br><br>
```Python
import pandas as pd

path = "./iris.csv"
df = pd.read_csv(path, sep=",")
```
<br>
Reorder rows by sepal.length in **ascending** order:
```Python
df = df.sort_values(by=['sepal.length'], ascending=[True])
```
<br>
Reorder rows by sepal.length in **descending** order:
```Python
df = df.sort_values(by=['sepal.length'], ascending=[False])
```
<br>
Reorder rows by **more than one** value.
Add a new column and its order orientation to the expression:
```Python
df = df.sort_values(by=['sepal.length', 'sepal.width'], ascending=[True, False])
```
<br>
If NAs should come first add **na_position**:
```Python
df = df.sort_values(by=['sepal.length', 'sepal.width'], ascending=[True, False], na_position= 'first')
```

---

## `mutate`


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
