donors <- data.frame(
  Donor_ID = 1:10,
  Name = c("Aman", "Rohan", "Simran", "Karan", "Priya", 
           "Vikram", "Anjali", "Rahul", "Neha", "Arjun"),
  Age = c(25, 32, 28, 22, 30, 35, 26, 29, 24, 31),
  Blood_Group = c("A+", "B+", "O+", "AB+", "B+", 
                  "O+", "A+", "O+", "AB+", "B+"),
  Contact = c("98765", "98766", "98767", "98768", "98769",
              "98770", "98771", "98772", "98773", "98774")
)
print(donors)
summary(donors)
table(donors$Blood_Group)

mean_age <- mean(donors$Age)
min_age <- min(donors$Age)
max_age <- max(donors$Age)
cat("Mean Age:", mean_age, "\n")
cat("Min Age:", min_age, "\n")
cat("Max Age:", max_age, "\n")


bg_count <- table(donors$Blood_Group)
print(bg_count)

barplot(bg_count, 
        main = "Blood Group Availability",
        xlab = "Blood Group",
        ylab = "No. of Donors",
        col = c("red", "blue", "green", "orange"),
        border = "black")

donors$Hemoglobin <- c(13.5, 14.2, 12.8, 15.0, 14.5, 13.2, 12.5, 14.8, 13.0, 15.2)
donors$Donations <- c(2, 5, 3, 1, 4, 6, 2, 5, 1, 4)

age_hemoglobin_cor <- cor(donors$Age, donors$Hemoglobin)
age_donation_cor <- cor(donors$Age, donors$Donations)

print(age_hemoglobin_cor)
print(age_donation_cor)


