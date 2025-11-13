# Sample data: before and after weights of participants (in kg)
before <- c(80, 75, 90, 85, 100, 95, 70, 88)
after  <- c(78, 73, 87, 82, 96, 93, 68, 85)

# c) State the null hypothesis:
# H0: There is no difference in weight before and after program
# H1: There is a difference (or decrease if one-sided)

# d) Calculate the statistic: Paired t-test
test <- t.test(before, after, paired = TRUE)

# e) Decide one-sided or two-sided:
test_one_sided <- t.test(before, after, paired = TRUE, alternative = "greater")

# Print results
print(test)            # two-sided
print(test_one_sided)  # one-sided

# Extract t-value
cat("t-value:", test$statistic, "\n")
