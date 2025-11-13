# Install required packages (only once)
install.packages("tidyverse")
install.packages("broom")
# Load libraries
library(tidyverse)   # readr, dplyr, ggplot2, tibble, magrittr
library(broom)       # tidy() for model results
# a) Load the data as a tibble
data <- tibble(
  size = c(650, 800, 1200, 1500, 2000, 2500, 3000),
  price = c(100000, 120000, 180000, 210000, 300000, 350000, 400000)
)
# b) Descriptive statistics
summary(data)
glimpse(data)
# c) Explore the data (scatterplot)
ggplot(data, aes(x = size, y = price)) +
  geom_point(color = "blue") +
  labs(title = "Scatterplot of Size vs Price")
# d) Define the linear model
model <- lm(price ~ size, data = data)
# e) Plot regression line
ggplot(data, aes(x = size, y = price)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Regression Line: Price ~ Size")
# f) Print results of the model
summary(model)
# g) Number of observations
nobs(model)
# h) R-squared
summary(model)$r.squared
# i) Statistical significance (tidy output)
tidy(model) %>% select(term, estimate, std.error, statistic, p.value)
# j) Regression equation
coef <- coefficients(model)
cat("Regression equation: Price =", round(coef[1],2), "+", round(coef[2],2), "* Size\n")
