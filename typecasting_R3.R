# a) Create logical vector 'monster'
monster <- c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
cat("a) Monster vector:\n")
print(monster)

# b) Character vector 'yugioh' and its type
yugioh <- c("Blue-Eyes", "Dark Magician", "Exodia", "Red-Eyes")
cat("\nb) Yugioh vector:\n")
print(yugioh)
cat("Type of yugioh: ", typeof(yugioh), "\n")

# c) Combine 'monster' and 'yugioh', check type
combined_vector <- c(monster, yugioh)
cat("\nc) Combined monster and yugioh vector:\n")
print(combined_vector)
cat("Type of combined vector: ", typeof(combined_vector), "\n")

# d) Create numeric vector 'atk', combine with 'monster', check type
atk <- c(3000, 2500, 1000, 2400)
coerce.check <- c(monster, atk)
cat("\nd) Combined monster and atk vector:\n")
print(coerce.check)
cat("Type of coerce.check: ", typeof(coerce.check), "\n")
# e)
# Numeric to Character
num_val <- 100
char_val <- as.character(num_val)
cat("Numeric to Character:", char_val, "\n")

# Character to Numeric
char_num <- "42"
num_val2 <- as.numeric(char_num)
cat("Character to Numeric:", num_val2, "\n")

# Numeric to Logical
num_logical <- as.logical(1)   # 1 → TRUE
cat("Numeric to Logical:", num_logical, "\n")

# Character to Logical
char_bool <- as.logical("TRUE")
cat("Character to Logical:", char_bool, "\n")

# Integer conversion
float_num <- 5.9
int_val <- as.integer(float_num)  # Converts to 5 (truncates)
cat("Float to Integer:", int_val, "\n")

# Character to Factor
names <- c("Red", "Green", "Blue", "Red")
fact_colors <- as.factor(names)
cat("Character to Factor:\n")
print(fact_colors)
