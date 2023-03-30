# R Tutorial

By Broccolito

Welcome to this R tutorial, where we will explore some of the most popular R packages and learn how to use them for data analysis, visualization, and modeling. R is a powerful programming language widely used in academia and industry for statistical computing, data science, and machine learning. Whether you are a beginner or an experienced R user, this tutorial will provide you with a comprehensive guide to some of the most important packages in the R ecosystem.



### What is R? 

R is a programming language and environment for statistical computing and graphics. It was developed by Ross Ihaka and Robert Gentleman in the early 1990s and has since become a popular tool for data analysis and visualization. R is open-source and freely available, which has contributed to its widespread use in both academia and industry.



### What can R do? 

R is a versatile language that can handle a wide range of tasks related to data analysis, manipulation, and visualization. It has a vast library of packages, including ones for statistical analysis, machine learning, data visualization, and more. R can handle large datasets and provides a range of statistical techniques to analyze them, from basic summary statistics to advanced regression models and time-series analysis. Additionally, R can create high-quality graphics for data visualization, including scatter plots, histograms, heat maps, and more.



### Why does one want to learn R? 

Learning R can be beneficial for a range of careers that involve working with data, such as data science, business analytics, and academic research. R's flexibility and extensive library of packages make it a valuable tool for analyzing complex data sets and producing high-quality visualizations. Additionally, the open-source nature of R allows for a collaborative community of users who develop and share packages and resources, making it an excellent resource for learning and problem-solving. Finally, learning R can improve your job prospects, as proficiency in R is increasingly in demand in many industries.



## How to download R

To download R on Windows, Mac, and Linux, follow the instructions below:

**Windows:**

1. Go to the R Project website at https://www.r-project.org/
2. Click on the "Download R" link in the "Getting Started" section.
3. Click on the "Windows" link.
4. Click on the "base" link to download the latest version of R for Windows.
5. Choose a location to save the installer, and then run the installer.
6. Follow the prompts in the installer to install R on your computer.

**Mac:**

1. Go to the R Project website at https://www.r-project.org/
2. Click on the "Download R" link in the "Getting Started" section.
3. Click on the "Mac" link.
4. Click on the "R-4.x.x.pkg" link to download the latest version of R for Mac.
5. Run the downloaded .pkg file and follow the prompts to install R on your Mac.

**Linux:**

The steps to download R on Linux will vary depending on your specific distribution. In general, you can follow these steps:

1. Open a terminal window.
2. Add the R repository to your list of repositories by running the following command:

```bash
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
```

Replace "ubuntu" with your Linux distribution name (e.g., debian, fedora, etc.) if you are not using Ubuntu.

1. Update the package list by running the command:

```bash
sudo apt-get update
```

1. Install R by running the command:

```bash
sudo apt-get install r-base
```

These steps will install the base version of R on your Linux system. You may need to install additional packages or dependencies depending on your specific needs.

Once you have installed R on your computer, you can open it and start using it to write and execute R code.



## How to Execute R code

### From Terminal

To run an R file in the terminal using the `source` function, follow these steps:

1. Open your terminal and navigate to the directory where your R file is located using the `cd` command. For example, if your file is located in the directory `/Users/username/Documents/R/`, you can navigate to it using the command:

```BASH
cd /Users/username/Documents/R/
```

1. Launch the R console by typing `R` in the terminal and pressing Enter.
2. Once you're in the R console, use the `source` function to run your R file. The syntax for the `source` function is:

```R
source("filename.R")
```

Replace "filename.R" with the name of your R file, including the .R extension. For example, if your R file is named "my_script.R", you would run:

```R
source("my_script.R")
```

1. Press Enter to run the `source` command. R will execute the code in your file and any output or results will be displayed in the terminal.

Note that you can also use an absolute or relative path to specify the location of the R file in the `source` function. For example:

```R
source("/Users/username/Documents/R/my_script.R")  # Absolute path
source("../scripts/my_script.R")  # Relative path
```

By using the `source` function to run your R code, you can easily automate the execution of your R scripts and integrate them with other tools and workflows.



### Using RStudio

To write and execute R code in RStudio, follow these steps:

1. Open RStudio on your computer.
2. Create a new R script by clicking on "File" in the top menu, selecting "New File", and then choosing "R Script". Alternatively, you can use the keyboard shortcut "Ctrl + Shift + N" (Windows) or "Cmd + Shift + N" (Mac) to create a new R script.
3. Write your R code in the script editor. For example, you can write:

```R
# This is a comment
my_var <- 10 + 5
print(my_var)
```

1. To execute your code, you can use one of the following methods:

- Click on the "Run" button in the top-right corner of the script editor.
- Use the keyboard shortcut "Ctrl + Enter" (Windows) or "Cmd + Enter" (Mac) to run the current line or selection of lines.
- Use the keyboard shortcut "Ctrl + Shift + Enter" (Windows) or "Cmd + Shift + Enter" (Mac) to run the entire script.

1. The results of your code will be displayed in the console pane, located in the bottom-left corner of the RStudio interface. For example, if you ran the code above, you would see the output:

```R
[1] 15
```

This means that the value of `my_var` is 15, and it is being printed to the console using the `print()` function.

1. You can save your R script by clicking on "File" in the top menu and selecting "Save". Alternatively, you can use the keyboard shortcut "Ctrl + S" (Windows) or "Cmd + S" (Mac) to save your script.

By using RStudio, you can write, execute, and save your R code in an integrated development environment (IDE) that offers features such as code highlighting, autocompletion, and debugging tools.



## Variables

Here are some **basic variable types** in R and their properties:

1. **Numeric** - Numeric variables are used to store numerical values, both integer and decimal. They are the most commonly used variable type in R for performing mathematical operations.

```R
x <- 5
y <- 3.14
class(x) # Output: "numeric"
class(y) # Output: "numeric"
```

2. **Character** - Character variables are used to store text data. They are created by enclosing the text in quotes, either single or double.

```R
name <- "John"
class(name) # Output: "character"
```

3. **Logical** - Logical variables are used to store binary values - TRUE or FALSE. They are commonly used for conditional statements and logical operations.

```R
z <- TRUE
class(z) # Output: "logical"
```

4. **Integer** - Integer variables are used to store whole numbers. They are useful when working with large datasets that require significant memory allocation.

```R
a <- 10L
class(a) # Output: "integer"
```

5. **Factor** - Factor variables are used to store categorical data. They are useful for statistical analysis, especially when the variable has a limited number of levels.

```R
fruit <- c("apple", "banana", "apple", "orange", "banana")
factor_fruit <- factor(fruit)
class(factor_fruit) # Output: "factor"
levels(factor_fruit) # Output: "apple" "banana" "orange"
```

These are just a few of the basic variable types in R, but they are the most commonly used ones. Understanding them is important for data analysis and manipulation in R.



Here are some variable types that are not so basic but extremely useful and common:

6. A **matrix** variable in R is a two-dimensional array of data with rows and columns. It is a type of data structure used for storing and manipulating numeric data. Here are some properties of a matrix variable in R:

   1. Homogeneous Data Type: All elements of a matrix must be of the same data type, such as numeric or character.
   2. Fixed Size: The size of the matrix is fixed and must be specified at the time of creation.
   3. Indexed: Elements in a matrix are indexed by row and column numbers, starting from 1.
   4. Mathematically Manipulable: A matrix in R can be used for linear algebra operations such as addition, subtraction, multiplication, and inversion.
   5. Matrix Creation: Matrices can be created using the matrix() function in R. This function takes arguments for the data values, the number of rows and columns, and other parameters such as row and column names.

   Here is an example of creating a 2x2 matrix in R:

   ```R
   # Creating a matrix with matrix() function
   mat <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
   
   # Print the matrix
   print(mat)
   
   # Output:
   #      [,1] [,2]
   # [1,]    1    3
   # [2,]    2    4
   ```

   In this example, we created a matrix called "mat" with two rows and two columns, with the values 1, 2, 3, and 4. The resulting matrix is a 2x2 matrix with the values arranged in row-major order. Matrices are an important data structure in R, especially for statistical analysis and machine learning.

7. A data.frame variable in R is a two-dimensional data structure that is similar to a matrix but has additional features, such as allowing columns of different data types. A data.frame is a list of equal-length vectors, where each vector represents a column of data. Here are some properties of a data.frame variable in R:

   1. Heterogeneous Data Types: A data.frame can hold columns of different data types, such as numeric, character, or factor.
   2. Data Manipulation: A data.frame in R can be used for a range of data manipulation operations, such as merging, subsetting, and reshaping.
   3. Column and Row Names: A data.frame can have column and row names, making it easier to work with and interpret.
   4. Indexed: A data.frame can be indexed by row and column numbers, as well as by column and row names.
   5. Data.frame Creation: Data.frames can be created using the data.frame() function in R. This function takes arguments for the data vectors, column names, and other parameters such as row names.

   Here is an example of creating a simple data.frame in R:

   ```R
   # Creating a data.frame with data.frame() function
   df <- data.frame(name = c("John", "Sara", "Mike"), 
                    age = c(25, 30, 28), 
                    married = c(TRUE, FALSE, TRUE))
   
   # Print the data.frame
   print(df)
   
   # Output:
   #   name age married
   # 1 John  25    TRUE
   # 2 Sara  30   FALSE
   # 3 Mike  28    TRUE
   ```

   In this example, we created a data.frame called "df" with three columns - name, age, and married. The values in each column are of different data types - character, numeric, and logical. The resulting data.frame is a 3x3 table with the values arranged in column-major order. Data.frames are a powerful data structure in R, and they are commonly used in data analysis and manipulation tasks.

8. In R, an **array** is a multi-dimensional data structure that can store values of the same data type. It is similar to a matrix, but it can have more than two dimensions. An array can be considered as a collection of matrices of the same size. Here are some properties of an array variable in R:

   1. Homogeneous Data Type: All elements of an array must be of the same data type, such as numeric or character.
   2. Fixed Size: The size of an array is fixed and must be specified at the time of creation.
   3. Indexed: Elements in an array are indexed by their position in each dimension, starting from 1.
   4. Mathematically Manipulable: An array in R can be used for mathematical operations such as addition, subtraction, multiplication, and inversion.
   5. Array Creation: Arrays can be created using the array() function in R. This function takes arguments for the data values, the dimensions of the array, and other parameters such as dimension names.

   Here is an example of creating a 3-dimensional array in R:

   ```R
   rCopy code
   # Creating a 3-dimensional array with array() function
   arr <- array(1:24, dim = c(2, 3, 4))
   
   # Print the array
   print(arr)
   
   # Output:
   # , , 1
   # 
   #      [,1] [,2] [,3]
   # [1,]    1    3    5
   # [2,]    2    4    6
   # 
   # , , 2
   # 
   #      [,1] [,2] [,3]
   # [1,]    7    9   11
   # [2,]    8   10   12
   # 
   # , , 3
   # 
   #      [,1] [,2] [,3]
   # [1,]   13   15   17
   # [2,]   14   16   18
   # 
   # , , 4
   # 
   #      [,1] [,2] [,3]
   # [1,]   19   21   23
   # [2,]   20   22   24
   ```

   In this example, we created an array called "arr" with 2 rows, 3 columns, and 4 layers, with the values 1 through 24. The resulting array is a 2x3x4 array with the values arranged in row-major order. Arrays are a powerful data structure in R, especially in scientific computing and data analysis tasks where multi-dimensional data is commonly used.

9. A **list** variable in R is a data structure that can hold elements of different data types, including other lists. Unlike vectors, matrices, and arrays, lists can hold elements of different sizes and dimensions. Here are some properties of a list variable in R:

   1. Heterogeneous Data Types: A list can hold elements of different data types, including vectors, matrices, data frames, and other lists.
   2. Variable Size: Unlike vectors, matrices, and arrays, the size of a list can vary, and elements can be added or removed as needed.
   3. Flexible Indexing: List elements can be accessed using indices, names, or logical vectors.
   4. List Creation: Lists can be created using the list() function in R. This function takes arguments for the list elements, and can also specify element names.
   5. Data Manipulation: Lists can be used for a range of data manipulation operations, such as merging, subsetting, and reshaping.

   Here is an example of creating a simple list in R:

   ```R
   # Creating a list with list() function
   my_list <- list(name = "John", age = 25, married = TRUE, hobbies = c("reading", "traveling"))
   
   # Print the list
   print(my_list)
   
   # Output:
   # $name
   # [1] "John"
   # 
   # $age
   # [1] 25
   # 
   # $married
   # [1] TRUE
   # 
   # $hobbies
   # [1] "reading"   "traveling"
   ```

   In this example, we created a list called "my_list" with four elements - name, age, married, and hobbies. The elements are of different data types - character, numeric, logical, and vector. The resulting list is a collection of named elements that can be accessed using their names or indices. Lists are a powerful data structure in R, and they are commonly used in data analysis and manipulation tasks where data can have varying sizes and dimensions.



## Control flows

### If statement

n R, an if statement is used to evaluate a logical expression and perform different actions depending on whether the expression is TRUE or FALSE. The basic syntax of an if statement in R is as follows:

```R
if (condition) {
  # statement(s) to be executed if condition is TRUE
}
```

Here, the condition is a logical expression that evaluates to either TRUE or FALSE. If the condition is TRUE, the statement(s) inside the curly braces are executed. If the condition is FALSE, the statement(s) are skipped.

For example, let's say we want to check whether a number is positive or negative using an if statement. We can use the following code:

```R
x <- 5

if (x > 0) {
  print("The number is positive")
}
```

In this example, we defined a variable "x" with a value of 5. The if statement checks whether "x" is greater than 0. Since 5 is greater than 0, the statement inside the curly braces is executed, and the message "The number is positive" is printed to the console.

We can also use an else statement with the if statement to specify an action to be taken when the condition is FALSE. The syntax of an if-else statement in R is as follows:

```R
if (condition) {
  # statement(s) to be executed if condition is TRUE
} else {
  # statement(s) to be executed if condition is FALSE
}
```

For example, let's say we want to check whether a number is positive, negative, or zero using an if-else statement. We can use the following code:

```R
x <- 0

if (x > 0) {
  print("The number is positive")
} else if (x < 0) {
  print("The number is negative")
} else {
  print("The number is zero")
}
```

In this example, we defined a variable "x" with a value of 0. The if-else statement checks whether "x" is greater than 0, less than 0, or equal to 0. Since "x" is equal to 0, the third statement inside the curly braces is executed, and the message "The number is zero" is printed to the console.



### For loop

In R, a for loop is used to repeat a set of statements a specified number of times. The basic syntax of a for loop in R is as follows:

```R
for (variable in sequence) {
  # statement(s) to be executed
}
```

Here, the "variable" is a variable that is used to store the current value of the sequence, and the "sequence" is a vector or a list of values that the loop iterates over. The statement(s) inside the curly braces are executed for each value in the sequence.

For example, let's say we want to print the numbers from 1 to 5 using a for loop. We can use the following code:

```R
for (i in 1:5) {
  print(i)
}
```

In this example, we defined a variable "i" as the loop variable, and used the sequence 1:5 to loop through the values 1, 2, 3, 4, and 5. For each value of "i", the print() function is called to print the value to the console.

We can also use a for loop to iterate over elements of a vector, list, or matrix. For example, let's say we want to find the sum of the elements in a vector called "numbers". We can use the following code:

```R
numbers <- c(2, 4, 6, 8, 10)
sum <- 0

for (i in numbers) {
  sum <- sum + i
}

print(sum)
```

In this example, we defined a vector called "numbers" with five elements. We also defined a variable "sum" with an initial value of 0. The for loop iterates over each element of the "numbers" vector, and adds it to the "sum" variable. Finally, the sum of the elements in the vector is printed to the console.



#### Vectorized loop functions (the apply function family)

The `apply`, `mapply`, `lapply`, and `sapply` functions are very useful in R for applying a function to a set of values or data structures. Here are some examples of how to use each of these functions:

1. `apply`: The `apply` function is used to apply a function to the rows or columns of a matrix or array. For example, let's say we have a matrix called `m` and we want to calculate the mean of each column:

   ```R
   m <- matrix(1:6, nrow = 2, ncol = 3)
   apply(m, 2, mean)
   ```

   In this example, the `apply` function is called with `m` as the first argument, `2` as the second argument (indicating we want to apply the function to columns), and `mean` as the third argument (the function we want to apply). The result is a vector with the mean of each column of `m`.

2. `mapply`: The `mapply` function is used to apply a function to multiple arguments in parallel. For example, let's say we have two vectors, `x` and `y`, and we want to calculate the sum of the corresponding elements:

   ```R
   x <- c(1, 2, 3)
   y <- c(4, 5, 6)
   mapply(sum, x, y)
   ```

   In this example, the `mapply` function is called with `sum` as the first argument (the function we want to apply), `x` as the second argument, and `y` as the third argument. The result is a vector with the sum of the corresponding elements of `x` and `y`.

3. `lapply`: The `lapply` function is used to apply a function to each element of a list and returns a list with the results. For example, let's say we have a list of vectors, and we want to calculate the sum of each vector:

   ```R
   l <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))
   lapply(l, sum)
   ```

   In this example, the `lapply` function is called with `l` as the first argument (the list we want to apply the function to), and `sum` as the second argument (the function we want to apply). The result is a list with the sum of each vector in `l`.

4. `sapply`: The `sapply` function is similar to `lapply`, but it simplifies the result if possible. For example, let's say we have a list of vectors, and we want to calculate the sum of each vector, but we want the result as a vector instead of a list:

   ```R
   l <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))
   sapply(l, sum)
   ```

   In this example, the `sapply` function is called with `l` as the first argument (the list we want to apply the function to), and `sum` as the second argument (the function we want to apply). The result is a vector with the sum of each vector in `l`. Note that since the result is a vector, `sapply` automatically simplifies the result.



### While loop

In R, a while loop is used to repeat a set of statements as long as a condition is true. The basic syntax of a while loop in R is as follows:

```
while (condition) {
  # statement(s) to be executed
}
```

Here, the "condition" is a logical expression that is evaluated at the beginning of each iteration of the loop. The statement(s) inside the curly braces are executed as long as the condition is TRUE.

For example, let's say we want to print the numbers from 1 to 5 using a while loop. We can use the following code:

```
i <- 1

while (i <= 5) {
  print(i)
  i <- i + 1
}
```

In this example, we defined a variable "i" with an initial value of 1. The while loop checks whether "i" is less than or equal to 5. Since "i" is initially 1, the condition is TRUE, and the print() function is called to print the value of "i" to the console. Then, we increment the value of "i" by 1 using the expression "i <- i + 1". The loop continues to iterate until "i" becomes 6, at which point the condition is FALSE, and the loop terminates.

We can also use a while loop to iterate over elements of a vector, list, or matrix. For example, let's say we want to find the first element in a vector called "numbers" that is greater than 5. We can use the following code:

```
numbers <- c(2, 4, 6, 8, 10)
i <- 1

while (numbers[i] <= 5) {
  i <- i + 1
}

print(numbers[i])
```

In this example, we defined a vector called "numbers" with five elements. We also defined a variable "i" with an initial value of 1. The while loop checks whether the value of "numbers[i]" is less than or equal to 5. If it is, we increment the value of "i" by 1 using the expression "i <- i + 1". The loop continues to iterate until it finds the first element in "numbers" that is greater than 5. Finally, we print the value of the element to the console.



### Functions in R

To define a function in R, you can use the `function` keyword followed by a set of parentheses containing the function arguments, and then a set of curly braces containing the function body. Here is an example of how to define a simple function that adds two numbers:

```
add_numbers <- function(x, y) {
  result <- x + y
  return(result)
}
```

In this example, the `add_numbers` function takes two arguments, `x` and `y`, and adds them together, storing the result in a variable called `result`. The `return` keyword is then used to return the value of `result` as the output of the function.

Once a function is defined, you can call it like any other function in R. Here's an example of how to call the `add_numbers` function we just defined:

```
add_numbers(3, 4)
```

This would return the value `7`, since `3 + 4 = 7`. You can define more complex functions with additional arguments and more complicated function bodies, but the basic structure of using `function` to define the function and `return` to specify the output remains the same.



### External Packages in R

Installing external packages/libraries when using R is important because it expands the capabilities of the R programming language. R has a vast collection of built-in functions and libraries, but there are many additional packages developed by the R community that offer specific tools and functionalities not found in the base R distribution. These packages cover a wide range of fields, from statistics and data visualization to machine learning and natural language processing. By installing and loading these external packages, users can tailor their R environment to their specific needs, and efficiently tackle complex problems without having to reinvent the wheel. Moreover, installing packages in R is a straightforward process that can be done with a single command, making it easy for users to take advantage of the vast ecosystem of R packages and keep their code up-to-date with the latest advancements in the field.



#### Install from CRAN

To install external packages/libraries in R, you can use the `install.packages()` function. For example, to install the `ggplot2` package, which is a popular package for data visualization, you can execute the following command in R:

```R
install.packages("ggplot2")
```

This will download and install the `ggplot2` package from the Comprehensive R Archive Network (CRAN) repository.

Once the package is installed, you can load it into your R environment using the `library()` function. For example:

```R
library(ggplot2)
```

This will load the `ggplot2` package and make its functions available for use in your R code.



#### Install from Bioconductor

Bioconductor is a popular repository of R packages for the analysis and comprehension of high-throughput genomic data. To install Bioconductor packages, you need to first install the Bioconductor package itself.

To install Bioconductor, you can run the following code in R:

```R
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install()
```

Once you have installed Bioconductor, you can install any package available on Bioconductor using the `BiocManager::install()` function. For example, to install the `DESeq2` package for differential gene expression analysis, you can run:

```R
BiocManager::install("DESeq2")
```

This will download and install the `DESeq2` package and its dependencies from the Bioconductor repository.

After installing a Bioconductor package, you can load it into your R environment using the `library()` function. For example:

```R
library(DESeq2)
```

This will load the `DESeq2` package and make its functions available for use in your R code.

Using Bioconductor packages, you can perform a wide range of genomic analyses, including differential gene expression analysis, ChIP-seq analysis, RNA-seq analysis, and more.



#### Install from source

Installing an R package from source code can be useful if the package is not available on a package repository like CRAN or Bioconductor. To install a package from source in R, you can follow these steps:

1. Download the source code for the package from its website or GitHub repository.
2. Unzip the source code archive, and navigate to the directory containing the package source files.
3. Open R and set the working directory to the package directory using the `setwd()` function. For example:

```R
setwd("/path/to/package/directory")
```

1. Build the package from source using the `R CMD build` command. For example:

```R
system("R CMD build .")
```

This will create a source package file with the extension `.tar.gz` in the current working directory.

1. Install the package from the source package file using the `install.packages()` function, with the `type` argument set to `"source"`. For example:

```R
install.packages("package_name.tar.gz", type = "source")
```

This will compile the package from source and install it in your R environment.

Note that installing packages from source may require additional system dependencies and configuration. Additionally, installing packages from untrusted sources can be a security risk, so it is important to ensure that you are downloading the package from a trusted source.



## Useful R packages

Here are some of the most useful R packages with descriptions of their use cases

| Package Name  | Description                                                  | Website                                   |
| ------------- | ------------------------------------------------------------ | ----------------------------------------- |
| dplyr         | Data manipulation package, including filtering, sorting, grouping, and summarizing data | https://dplyr.tidyverse.org/              |
| ggplot2       | Data visualization package that provides a powerful system for creating graphics | https://ggplot2.tidyverse.org/            |
| tidyr         | Package for data tidying, including reshaping data from wide to long format and vice versa | https://tidyr.tidyverse.org/              |
| readr         | Package for reading and parsing tabular data, including CSV, TSV, and fixed-width files | https://readr.tidyverse.org/              |
| lubridate     | Package for working with dates and times, including parsing, arithmetic, and rounding functions | https://lubridate.tidyverse.org/          |
| stringr       | Package for working with strings, including pattern matching, manipulation, and splitting | https://stringr.tidyverse.org/            |
| purrr         | Functional programming package for working with lists and vectors, including mapping and filtering | https://purrr.tidyverse.org/              |
| magrittr      | Package for creating expressive pipelines in R, making it easier to read and write code | https://magrittr.tidyverse.org/           |
| data.table    | Package for data manipulation and analysis, including fast aggregation, joins, and data set keys | https://rdatatable.gitlab.io/data.table/  |
| knitr         | Package for dynamic report generation, including integrating R code with text and graphics | https://yihui.org/knitr/                  |
| tidymodels    | Collection of packages for modeling and machine learning, including data preprocessing and modeling | https://www.tidymodels.org/               |
| shiny         | Package for creating interactive web applications from R code | https://shiny.rstudio.com/                |
| broom         | Package for converting statistical models into tidy format, including summaries and visualizations | https://broom.tidyverse.org/              |
| forcats       | Package for working with categorical data, including reordering factors and handling missing levels | https://forcats.tidyverse.org/            |
| caret         | Package for classification and regression training, including model tuning and variable importance | https://topepo.github.io/caret/           |
| haven         | Package for importing and exporting various data formats used in other statistical software | https://haven.tidyverse.org/              |
| tibble        | Data frame package that provides additional features, including improved printing and subsetting | https://tibble.tidyverse.org/             |
| caretEnsemble | Package for combining multiple machine learning models into a single ensemble model | https://topepo.github.io/caretEnsemble/   |
| glmnet        | Package for fitting linear models with lasso or ridge regularization, useful for high-dimensional data | https://glmnet.stanford.edu/              |
| Matrix        | Package for working with matrices, including sparse and dense matrix operations | https://cran.r-project.org/package=Matrix |



