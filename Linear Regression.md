# Linear Regression



## Simple linear regressions

To run a linear regression in R, we can use the `lm()` function, which stands for "linear model". Let's use the `mtcars` dataset as an example, which contains information about various car models and their characteristics.

First, let's load the `mtcars` dataset by typing `data(mtcars)` in the console. Then, we can use the `lm()` function to fit a linear regression model to the `mtcars` dataset. For example, if we want to predict the miles per gallon (`mpg`) based on the weight of the car (`wt`), we can use the following code:

```R
# Load mtcars dataset
data(mtcars)

# Fit linear regression model
model <- lm(mpg ~ wt, data = mtcars)

# Print model summary
summary(model)
```

In this code, `mpg` is the response variable and `wt` is the predictor variable. The `data` argument specifies the dataset we are using. The output of the `summary()` function shows us the coefficients of the linear regression model, as well as other statistical measures such as the R-squared value and the standard error.

We can also use the `predict()` function to make predictions based on the model. For example, if we want to predict the miles per gallon for a car with a weight of 3.5, we can use the following code:

```R
# Predict mpg for weight of 3.5
newdata <- data.frame(wt = 3.5)
predict(model, newdata = newdata)
```

This code creates a new data frame with a single row containing a weight of 3.5, and uses the `predict()` function to predict the miles per gallon for this weight.



## Linear mixed model

Linear mixed-effects models (LMMs), also known as mixed-effects models or hierarchical linear models, are extensions of linear regression models that account for both fixed and random effects. They are commonly used to model nested or clustered data, where observations within groups are expected to be more similar to each other than to observations in other groups. In R, the `lme4` package provides functions for fitting LMMs.

To run a linear mixed-effects model regression in R using `lme4`, you first need to install and load the package:

```R
install.packages("lme4")
library(lme4)
```

Next, you need to load your data and define the model formula. The formula should specify the response variable and the fixed and random effects. Here is an example using the `sleepstudy` dataset:

```R
data(sleepstudy)
model <- lmer(Reaction ~ Days + (1 + Days | Subject), data = sleepstudy)
```

In this model, `Reaction` is the response variable, `Days` is a fixed effect, and `(1 + Days | Subject)` specifies a random intercept and slope for `Days` within each subject.

Finally, you can use the `summary()` function to view the model output:

```R
summary(model)
```

This will provide information about the fixed and random effects, as well as model fit statistics such as AIC and BIC.

It's worth noting that LMMs can be complex and require careful consideration of model assumptions and selection of appropriate covariance structures. It's recommended to consult with a statistician or reference texts on mixed-effects modeling when working with these models.



## Regression using `torch`



To perform a regression using `torch` in R, you can use the `torch` package which provides a way to create and manipulate tensors (multi-dimensional arrays) that are used in deep learning. Here's an example of how to use `torch` for regression:

1. Load the `torch` package and set the random seed for reproducibility:

```R
library(torch)
set.seed(123)
```

1. Create some random data for the input and output variables:

```R
x <- runif(100)
y <- 2 * x + rnorm(100)
```

1. Convert the data to tensors using the `as_tensor()` function:

```R
x_tensor <- as_tensor(x)
y_tensor <- as_tensor(y)
```

1. Create a linear model using `nn_Linear()` and set the number of input and output features:

```R
model <- nn_Linear(1, 1)
```

1. Define the loss function and optimizer:

```R
loss_fn <- nn_MSE_Loss()
optimizer <- optim_SGD(model$parameters(), lr = 0.01)
```

1. Train the model using a loop:

```R
for (epoch in 1:1000) {
  # Forward pass
  y_pred <- model(x_tensor)
  loss <- loss_fn(y_pred, y_tensor)
  
  # Backward pass
  optimizer$zero_grad()
  loss$backward()
  optimizer$step()
  
  # Print progress
  if (epoch %% 100 == 0) {
    cat(sprintf("Epoch %d, loss = %.4f\n", epoch, loss$item()))
  }
}
```

In this example, we create a linear model with one input feature and one output feature, define the mean squared error (MSE) loss function, and use stochastic gradient descent (SGD) as the optimizer. We then train the model for 1000 epochs and print the loss every 100 epochs.

Note that `torch` is a powerful package for deep learning and can be used for much more than just regression. It's recommended to consult the official documentation for more information and examples.