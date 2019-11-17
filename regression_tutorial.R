###########################################################
##     Learn how to do regression in R in 10 mins        ##
###########################################################

#Author: Wanjun Gu
#Github Repository: https://github.com/Broccolito

#For general R tutorail, check out:
#https://github.com/Broccolito/R_Tutorial/blob/master/R_tutorial.R

#This tutorial is about doing regressions in R

#Step 1: read file into the workspace

#Packages or functions that you may need:
library(readxl) # Read Excel sheet
library(knitr) # Look at the data in a prettier format
#If you do not have these packages installed, install the packages using:
install.packages("readxl")
install.packages("knitr")
# read.csv() # Read csv files

# Reading data from files looks like:
# sample_data = as.data.frame(read.csv(file = "file_name.csv"))
# sample_data = as.data.frame(read_excel(path = "file_name.xlsx"))

#For the sake of this tutorial, lets use an embedded dataset in R
sample_data = mtcars

# Check the structure of the data
kable(sample_data)

  # |                    |  mpg| cyl|  disp|  hp| drat|    wt|  qsec| vs| am| gear| carb|
  # |:-------------------|----:|---:|-----:|---:|----:|-----:|-----:|--:|--:|----:|----:|
  # |Mazda RX4           | 21.0|   6| 160.0| 110| 3.90| 2.620| 16.46|  0|  1|    4|    4|
  # |Mazda RX4 Wag       | 21.0|   6| 160.0| 110| 3.90| 2.875| 17.02|  0|  1|    4|    4|
  # |Datsun 710          | 22.8|   4| 108.0|  93| 3.85| 2.320| 18.61|  1|  1|    4|    1|
  # |Hornet 4 Drive      | 21.4|   6| 258.0| 110| 3.08| 3.215| 19.44|  1|  0|    3|    1|
  # |Hornet Sportabout   | 18.7|   8| 360.0| 175| 3.15| 3.440| 17.02|  0|  0|    3|    2|
  # |Valiant             | 18.1|   6| 225.0| 105| 2.76| 3.460| 20.22|  1|  0|    3|    1|
  # |Duster 360          | 14.3|   8| 360.0| 245| 3.21| 3.570| 15.84|  0|  0|    3|    4|
  # |Merc 240D           | 24.4|   4| 146.7|  62| 3.69| 3.190| 20.00|  1|  0|    4|    2|
  # ......................
  # ......................

# The data should look like the data frame above. 
# You can also view the first few results by using

kable(head(sample_data, 5)) # This only shows the first 5 rows of the data

# You can also check the dimension of the dataset using:
dim(sample_data)
# [1] 32 11

#32 is the number of rows and 11 is the number of columns Or you can say:
#32 is the total sample size (observations) and 11 is the number of variables

#Then you can see what exactly the variables are by knowing the column names
names(sample_data)
# [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"

# That way, you can start construct your regression using:
lm(data = sample_data, formula = mpg ~ cyl)

#You will get a result like
# Call:
# lm(formula = mpg ~ cyl, data = sample_data)
# 
# Coefficients:
#   (Intercept)          cyl  
#        37.885       -2.876  


#You can also summarize the results using
summary(lm(data = sample_data, formula = mpg ~ cyl))
#The result looks something like:
# Call:
# lm(formula = mpg ~ cyl, data = sample_data)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -4.9814 -2.1185  0.2217  1.0717  7.5186 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  37.8846     2.0738   18.27  < 2e-16 ***
#   cyl          -2.8758     0.3224   -8.92 6.11e-10 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 3.206 on 30 degrees of freedom
# Multiple R-squared:  0.7262,	Adjusted R-squared:  0.7171 
# F-statistic: 79.56 on 1 and 30 DF,  p-value: 6.113e-10

# If you assign a variable to this summary, you can get all kinds of stats
# from the regression.
reg_res = summary(lm(data = sample_data, formula = mpg ~ cyl))
# You can use "$" to access:
  # [1] "call"          "terms"         "residuals"     "coefficients"  "aliased"       "sigma"         "df"           
  # [8] "r.squared"     "adj.r.squared" "fstatistic"    "cov.unscaled" 

# For example:
reg_res$coefficients
#             Estimate Std. Error   t value     Pr(>|t|)
# (Intercept) 37.88458  2.0738436 18.267808 8.369155e-18
# cyl         -2.87579  0.3224089 -8.919699 6.112687e-10
reg_res$r.squared
#[1] 0.72618

# You can also plot the regression using ggplot2 package
library(ggplot2)
#In case you do not have ggplot2, install it using:
install.packages("ggplot2")
qplot(data = sample_data, cyl, mpg, main = "sample_regression") + geom_smooth(method = "lm", color = "black")

#Multiple regressions and more complicated models
# Remember that command you used just now: "lm" 
lm(data = sample_data, formula = mpg ~ cyl)
# if instead of mpg ~ cyl, you want to regress mpg on both cyl and disp,
# you can do:
lm(data = sample_data, formula = mpg ~ cyl + disp)
#The result looks like:
# Call:
# lm(formula = mpg ~ cyl + disp, data = sample_data)
# 
# Coefficients:
# (Intercept)          cyl         disp  
#      34.66099     -1.58728     -0.02058  

# Summarize it using the same command:
summary(lm(data = sample_data, formula = mpg ~ cyl + disp))
# Call:
#   lm(formula = mpg ~ cyl + disp, data = sample_data)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -4.4213 -2.1722 -0.6362  1.1899  7.0516 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 34.66099    2.54700  13.609 4.02e-14 ***
#   cyl         -1.58728    0.71184  -2.230   0.0337 *  
#   disp        -0.02058    0.01026  -2.007   0.0542 .  
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 3.055 on 29 degrees of freedom
# Multiple R-squared:  0.7596,	Adjusted R-squared:  0.743 
# F-statistic: 45.81 on 2 and 29 DF,  p-value: 1.058e-09


#Get the coefficients:
summary(lm(data = sample_data, formula = mpg ~ cyl + disp))$coefficient
#             Estimate     Std. Error   t value   Pr(>|t|)
# (Intercept) 34.66099474 2.54700388 13.608536 4.022869e-14
# cyl         -1.58727681 0.71184427 -2.229809 3.366495e-02
# disp        -0.02058363 0.01025748 -2.006696 5.418572e-02

# The "formula" argument in lm function can get more complicated
# For example:
lm(data = sample_data, formula = mpg ~ cyl + disp + wt)
lm(data = sample_data, formula = mpg ~ cyl + disp + I(wt)^2)
lm(data = sample_data, formula = mpg ~ (I(cyl) + I(disp))/ I(wt))

# Explore and have fun !


