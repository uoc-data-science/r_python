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

Purpose: Unordered observations. Arrange reorders observations.<br>
Official documentation: https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/arrange
Good help, tutorials: 

iris = read.csv("iris.csv")

1. iris_sorted = arrange(iris, sepal.length)
2. iris_sorted2 = arrange(iris, desc(sepal.length), sepal.width)
3. ...

Working example (asap):

```R
```

### Python

Purpose:
Documentation: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.sort_values.html
Purpose: Unordered observations. Arrange reorders observations.
Documentation: http://pandas.pydata.org/pandas-docs/version/0.19/generated/pandas.DataFrame.sort.html
Good help, tutorials: -

import pandas as pd
path = "./iris.csv"
df = pd.read_csv(path, sep=",")

1. df = df.sort_values(by=['Sepal.Length'], ascending=[True]
1. df = df.sort_values(by=['Sepal.Length', 'Sepal.Width'], ascending=[True, False])
1. df = df.sort_values(by=['Sepal.Length', 'Sepal.Width'], ascending=[True, False], na_position= 'first')

Working example (asap):

```Python
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
