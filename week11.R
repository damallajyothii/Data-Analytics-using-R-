# Load necessary libraries
library(tidyverse)

# Define the URL for the dataset
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00320/student.zip"

# Define the destination file path
destfile <- tempfile(fileext = ".zip")

# Download the dataset
download.file(url, destfile)

# Unzip the dataset
unzip(destfile, exdir = tempdir())

# Load the data from CSV files
student_data <- read.csv(file.path(tempdir(), "student-mat.csv"), sep = ";")

# View the first few rows of the dataset
head(student_data)

# Data Preparation
# Create a binary variable for passing status based on G3 (final grade)
student_data$Pass <- ifelse(student_data$G3 >= 10, 1, 0)

# Remove unnecessary columns
student_data <- student_data %>% select(-G3)

# View the modified dataset
head(student_data)

# Perform Logistic Regression
model <- glm(Pass ~ ., data = student_data, family = binomial)

# Summarize the logistic regression model
summary(model)
