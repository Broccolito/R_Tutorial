###################################
##     Learn R in 10 mins        ##
###################################

#Author: Wanjun Gu
#Github Repository: https://github.com/Broccolito


#Downlaod R base:
#Go to: https://cran.r-project.org/src/base-prerelease/
#Download R Studio (One of the best IDEs of R):
#Go to: https://www.rstudio.com/products/rstudio/download/

#Jupytor Notebook for R: 
#(Go into the link and click on "Try Jupytor with R")
#Go to: https://jupyter.org/try
#Jupytor notebook is currently the best online R compiler


#As you can already assume: inline comments in R can be achieved using "#"

#If you are to run a block of R code in the file, select the block
#And press "Control + Enter" for windows and "Command + Enter" for Mac
#If you want to run the whole file, select all using "Control + A" and run

#Also, R is case sensitive!! So cHeCk your sPelLing if error occurs





#Math
a = 1
print(a)
b = 2
print(b)

#By simply typing the name of the variable, we can view the value of the
#Variable in the terminal. Try:
a
b

#In order to put codes in different lines together, use ";"
print("The result is: ");print(a + b)

a <- 1 
#"<-" sign is unique in R. There are differences between
#"<-" and "=", but it is beyond beginner's reach. 
#And it's unimportant for data science.

b <- 2
print(b)
cat(b)
##print and cat functions are all output functions. Try to find their difference!

a + b
a - b
a * b
a / b
a ^ b #a to the power of b

#Boolean operation 
#(The operation of TRUE and FALSE) is very important in Programming
a == b #Return to the value of FALSE or TRUE
a < b  #Return to the value of FALSE or TRUE
a <= b
#If TRUE and FALSE are to be converted to numbers, they will be 1 and 0
TRUE == FALSE
TRUE == 1
FALSE == 0
TRUE + TRUE
as.numeric(TRUE)
any(TRUE,FALSE,FALSE,FALSE)
all(TRUE,TRUE,FALSE,TRUE) #Guess what any and all functions mean

10 %% 3  #The return value of this fomula is 1, which is the reminder of 10/3
log(a,base = b) #Log
#And there are still a lot of math functions available in R
#Go learn them only if you are needing them

#Statistics Operation
#Useful to most scientific calculations

#Generate 10 random numbers ranging from 1 to 100
runif(n = 10, min = 1, max = 100)

#Generate random numbers in a normal distribution
rnorm(n = 100, mean = 42, sd = 7.5)

#Perform a t test
a = c(1,2,2,1,3)
b = c(1,8,5,2,1)
t.test(a,b)

#And so on...





#Data structure

#Vector
a = vector(length = 4) #Define a empty vector to assign RAM space (Not nessesary)
a = c(1,2,3,2,4);a
a = seq(1,10,2);a
a = rep(2,10);a
a = rep(c(1,2),5);a
a = 1:5;a

#Index Number
a = 1:5;a
#The 3rd number in a
a[3]
a[3] = 12;a #The vector can be pinpointed and modified by citing index number
#The numebr greater than 3 in a
a[a>3]
#The number greater than 3 and smaller than 10 in a
a[a>3 & a<10]
#The number smaller than 3 or greater than 10 in a
a[a<3 | a>10]



#Matrix
a = matrix(nrow = 10,ncol = 10) #Assign RAM to the matrix (Not nessesary)
a = c(1,2,3)
b = c(5,6,7)
ab = c(a,b);ab # c is the function that will arbitrarily conbine a and b to be a new vector

ab = cbind(a,b);ab #Bind vectors in columns to form a matrix
ab = rbind(a,b);ab #Bind vectors in rows to form a matrix

#Index number
ab = cbind(a,b)
ab[1,2]
ab[1,] #First row
ab[,1] #First colomn
ab[1:2,] #First and second row



#Data.frame
#Borrow the ab from the previuos session.
ab = as.data.frame(ab); ab
#For data.frame specifically, you can access the data by citing the name
ab$a; ab$b
#And you can also do
ab[,1]; ab[2,]

#Vector, Metrix and data.frame are the 3 main data structures in R.
#For more data structures, try to learn:
#list
#...



#Conversion:
#Convert number to vector
as.character(1)
#Convert character to number
as.numeric("1") #If the character is not a number at all, error may occur
as.numeric(TRUE)
#learn more about:
#as.vector
#as.matrix
#as.data.frame
#...





#Operation

#if statement
a = 3
if(a == 3){
  print("Yes, a equals to 3.")
}else if(a < 3){
  print("No, a is not 3.")
}else{
  print("Still, a is not 3")
}



#For loop
a = c(1,4,2)
for(i in a){
  print(i)
}
for(i in 1:10){
  print("Hello, world")
}
#Sample for loop for summation
list = c(1,2,4,1,2,41)
sum = 0 #Initializing the vector sum, making it 0
for(i in list){
  sum = sum + i
}
print(sum)
#length() function will return to the length of the vector
#So this algorithm can also be written as:
sum = 0
for(i in 1:length(list)){
  sum = sum +list[i]
}
print(sum)



#while loop
while(TRUE){
  print("Wow!! See! Can't stop learning R!")
} #Don't run; otherwise it will not stop, since it is always TRUE

n = 1
while(n <= 10){
  print(n)
  n = n + 1
} #This algorithm is going to print n from 1 to 10

#An example:
n = 1
while(n <= 10){
  for(i in 1:10){
    if(i <5){
      print("i is smaller than 5")
    }else if(i == 5){
      print("i is 5")
    }else{
      print("i is greater than 5")
    }
  }
  cat("This is the ")
  cat(n)
  cat(" time(s) that I make sure. \n") #\n for going to the next line
  n = n + 1
}





#Define Function
add = function(num1, num2){
  return(num1 + num2)
}
add(1,2)

#Self Written factorial function
#Try to understand the logic.
self_factorial = function(number){
  if(round(number,0) == number){
    prod = 1
    if(number < 0){
      print("The number input must be bigger than 0")
      return(0)
    }else if(number == 0){
      return(1)
    }else if(number == 1){
      return(1)
    }else if(number > 1){
      numseq = seq(1,number,1)
      for(i in numseq){
        prod = prod * i
      }
      return(prod)
    }
  }else{
    print("The number input must be an integer")
    return(0)
  }
}





#Useful tips while coding in R

a = seq(1,10,1)
#Return the length of the vector
length(a)


#Return the unique values of the vector
unique(a)


#Return the help file of the function
#You can do either:
?unique() #"?" and the name of the function
?plot #You can do it with or without the "()¡°
#or
help("plot") #You can either make the input of the function a string or a function
help(plot)


#Very useful tip: How to use the embeded function "PLOT"
a = seq(1,10,0.1) #Generate a sequential number list from 1 to 10 with steps of 0.001
b = sin(a)
plot(a,b) #This is most basic usage of plot.
#Thera are also a lot of very useful argument of this function that you can add.
#Try to change each of these parameters and see what will happen
plot(a,b,
     type = "l",
     main = "This is a demo plot",
     xlab = "This is the X Axis",
     ylab = "This is the Y Axis",
     xlim = c(4,8),
     ylim = c(-0.8,0.8)) 
#type = "l" is the argument making the plot a line instead of several discontinuous points
#xlim and ylim help set the upper limits and lower limits of the axis

plot(a,b,
     type = "b",
     main = "This is another demo with actual points",
     pch = 16,
     cex = 0.1,
     col = "blue")
#pch argument set the shape of the points; different numbers mean different points
#Try the below code to see what all these shapes are:
windows(width = 1080,height = 720)
plot(seq(1,25,1),pch = seq(1,25,1),cex = 3) 
#cex here specifies point size.





#Install and Import packages
#This is important in R since R is powerful in terms of its community and packages
install.packages("ggplot2")
install.packages("dplyr")
#After packages are successfully installed, use:
library(ggplot2)
library(dplyr)
#To call the packages. And of course:
help("ggplot2") #For help







#Here are some practice problems!


a = rnorm(10000)

#Find the numbers in a that are greater than 2

#How many numbers in a are greater than 2

#Makke a scatter plot of numbers vs index regarding the numbers in a
#That are greater than 2

#What is the summation of a (Do it using for loop instead of sum() function)



a = rnorm(10000)
b = rnorm(10000)
mat = cbind(a,b)
dat = as.data.frame(mat)

#Make only numbers in dat have only 1 decimal place

#Plot a vs b

#Return the 500th to 1300th row in mat

#Return the a column in dat




#If you still have any questions, you can either Email:
# wanjungu@yahoo.com
#Or go on https://stackoverflow.com/
#Or https://github.com/
#For more resources

#Most importantly, practice makes perfect!

