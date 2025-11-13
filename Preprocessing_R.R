### a) Arguments of sample()
args(sample)

### b) Real-world example of sample()
customers <- paste("Customer", 1:100)
selected_customers <- sample(customers, size = 5, replace = FALSE)
selected_customers

### c) Arguments of median() and using na.rm
args(median)
# Creating a vector with NA values
lvl <- c(12, 45, NA, 38, 29)
### d) Default (na.rm = FALSE) → NA returned if NA exists
median(lvl, na.rm = FALSE)
# With NA removal
median(lvl, na.rm = TRUE)

### e) Utility of which()
# which() returns the indices of TRUE values
ages <- c(15, 22, 30, 17, 40)
which(ages >= 18)  # Positions of adults

### f) Frequency table of categorical data
fruits <- c("Apple", "Banana", "Apple", "Orange", "Banana", "Apple")
table(fruits)

### g) Utility of subset()
# Example dataset
df <- data.frame(Name = c("A", "B", "C", "D"),
                 Age = c(25, 30, 22, 28),
                 City = c("Delhi", "Mumbai", "Delhi", "Chennai"))
# Get only people from Delhi
subset(df, City == "Delhi")
# Get people older than 25 and only select Name, Age columns
subset(df, Age > 25, select = c(Name, Age))

### h) Utility of ifelse()
marks <- c(85, 40, 72, 30, 90)
result <- ifelse(marks >= 50, "Pass", "Fail")
data.frame(marks, result)

### i) Applying ggplot() on iris dataset
install.packages("ggplot2")
library(ggplot2)
# Load the iris dataset explicitly
data("iris")   # ensures iris is available in the environment
# Scatter plot: Sepal.Length vs Petal.Length colored by Species
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Iris Dataset: Sepal vs Petal Length",
       x = "Sepal Length", 
       y = "Petal Length")
