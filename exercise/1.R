age <- c(6, 14, 12, 10)
name <- c("Audree", "Andy", "Rose", "Andrew")
gender <- c("female", "male", "female", "male")
info <- data.frame(age, name, gender)
print(info[3, 2])
print(info[2:3, ])
info <- info[-c(1), ]
print(info[7 < info[, 1] & info[, 1] < 13])
info[2, 1] <- 8
print(summary(info))
info$gender <- as.factor(info$gender)
print(summary(info))