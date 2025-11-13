# Create the data frame
animal_data <- data.frame(
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "dog"),
  stringsAsFactors = TRUE # Ensure Breed is treated as a factor
)

# a) Invert the values for Breed
# b) Edit the levels of the Breed variable to complete the task.
levels(animal_data$Breed) <- c("dog", "cat") # This reorders the levels, effectively inverting them if only two levels exist.

# c) Access a specific variable
print(animal_data$Weight) # Accessing the 'Weight' column
print(animal_data[,"Size"]) # Another way to access the 'Size' column

# d) Add a new column Age_in_years
animal_data$Age_in_years <- animal_data$Months_old / 12

# e) Generate a frequency table of Breed vs Size
frequency_table <- table(animal_data$Breed, animal_data$Size)
print(frequency_table)

# f) Compute the average Weight grouped by Breed using aggregate()
average_weight_by_breed <- aggregate(Weight ~ Breed, data = animal_data, FUN = mean)
print(average_weight_by_breed)

# g) Visualize the differences in Weight between breeds using a boxplot
boxplot(Weight ~ Breed, data = animal_data,
        main = "Weight Distribution by Breed",
        xlab = "Breed",
        ylab = "Weight")
