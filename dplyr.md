# dplyr

## Introduction to dplyr

`dplyr` is a popular R package for data manipulation. It provides a set of functions that can be used to efficiently manipulate data frames or tibbles, which are a modern reimagining of the traditional data frame. `dplyr` offers a clean and intuitive syntax for common data manipulation tasks, making it a favorite among R users.

## Main Functions in dplyr

The main functions in `dplyr` are:

- `filter()` - to filter rows based on certain conditions
- `select()` - to select specific columns
- `mutate()` - to create new columns based on existing ones
- `arrange()` - to reorder rows based on certain criteria
- `group_by()` - to group data by one or more variables
- `summarize()` - to summarize data by groups

## Using dplyr with mtcars

Let's use the `mtcars` dataset to demonstrate how to use `dplyr`. This dataset contains information about various car models, such as the number of cylinders, horsepower, and miles per gallon (mpg).

First, we need to load the `dplyr` package and the `mtcars` dataset:

```R
library(dplyr)
data(mtcars)
```

### Filtering Rows with `filter()`

Suppose we want to filter the `mtcars` dataset to only include cars with 6 cylinders. We can do this with the `filter()` function:

```R
rCopy code
six_cylinders <- filter(mtcars, cyl == 6)
```

The `filter()` function takes two arguments: the name of the data frame and the condition to filter on. In this case, we specify `mtcars` as the data frame and `cyl == 6` as the condition.

### Selecting Columns with `select()`

Suppose we only want to select the columns "mpg", "cyl", and "wt" from the `mtcars` dataset. We can use the `select()` function to do this:

```R
selected_cols <- select(mtcars, mpg, cyl, wt)
```

The `select()` function takes two arguments: the name of the data frame and the names of the columns to select.

### Creating New Columns with `mutate()`

Suppose we want to create a new column in the `mtcars` dataset that calculates the horsepower per cylinder. We can do this with the `mutate()` function:

```R
horsepower_per_cyl <- mutate(mtcars, hp_per_cyl = hp / cyl)
```

The `mutate()` function takes two arguments: the name of the data frame and the new column to create, along with its calculation.

### Reordering Rows with `arrange()`

Suppose we want to arrange the `mtcars` dataset in ascending order of miles per gallon. We can use the `arrange()` function to do this:

```R
arranged_mpg <- arrange(mtcars, mpg)
```

The `arrange()` function takes two arguments: the name of the data frame and the variable(s) to sort by. By default, `arrange()` sorts in ascending order.

### Grouping Data with `group_by()`

Suppose we want to group the `mtcars` dataset by the number of cylinders and then calculate the mean miles per gallon for each group. We can do this with the `group_by()` and `summarize()` functions:

```R
grouped_mpg <- mtcars %>%
  group_by(cyl) %>%
   mutate(mean_mpg = mean(mpg))
```

Here, `group_by(cyl)` groups the data by number of cylinders, and `mutate(mean_mpg = mean(mpg))` creates a new variable `mean_mpg` that calculates the mean miles per gallon for each group. The resulting output will have a new column `mean_mpg`.

Dplyr's `mutate()` function is particularly useful when working with large and complex data frames. It allows you to create new variables based on existing ones without having to create multiple intermediate data frames, which can be time-consuming and memory-intensive.