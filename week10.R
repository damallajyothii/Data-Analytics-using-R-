# Week-10
# a. Find the Correlation Maatrix 

# Load necessary libraries
install.packages("ggplot2")
install.packages("corrplot")
library(ggplot2)
library(corrplot)

# Load the Iris dataset
data("iris")

# Calculate the correlation matrix for the numeric columns
correlation_matrix <- cor(iris[, 1:4])

# Print the correlation matrix
print(correlation_matrix)

# Visualize the correlation matrix using corrplot
corrplot(correlation_matrix, method = "color", type = "upper", 
         tl.col = "black", tl.srt = 45, addCoef.col = "black", 
         col = colorRampPalette(c("blue", "white", "red"))(200),
         title = "Correlation Matrix of Iris Dataset")


# b. ANOVA 
# Load the Iris dataset
data("iris")

# Perform ANOVA for Sepal Length
anova_sepal_length <- aov(Sepal.Length ~ Species, data = iris)
summary(anova_sepal_length)

# Perform ANOVA for Sepal Width
anova_sepal_width <- aov(Sepal.Width ~ Species, data = iris)
summary(anova_sepal_width)

# Perform ANOVA for Petal Length
anova_petal_length <- aov(Petal.Length ~ Species, data = iris)
summary(anova_petal_length)

# Perform ANOVA for Petal Width
anova_petal_width <- aov(Petal.Width ~ Species, data = iris)
summary(anova_petal_width)


