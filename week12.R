#week 12
# Load necessary libraries
library(tidyverse)

# Load the Iris dataset
data("iris")

# View the first few rows of the dataset
head(iris)

# Perform Multiple Linear Regression
model <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width, data = iris)

# Summarize the regression model
summary(model)
#week 12 b
# Load necessary libraries
library(tidyverse)

# Load the Iris dataset
data("iris")

# View the first few rows of the dataset
head(iris)

# Perform Multiple Linear Regression
model <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width, data = iris)

# Summarize the regression model
summary(model)

# Predict Sepal.Length using the regression model
# Create a new dataset for prediction
new_data <- data.frame(Sepal.Width = c(3.5, 3.0, 2.5),
                       Petal.Length = c(1.4, 4.5, 5.5),
                       Petal.Width = c(0.2, 1.5, 2.0))

# Make predictions
predictions <- predict(model, newdata = new_data)

# Print the predictions
predictions

