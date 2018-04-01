# Script for assignment Getting and Cleaning Data at Coursera

#Set working directory:
setwd("D:/../GettingCleaningData/UCI HAR Dataset")

# Import dplyr package
library(dplyr)

# Import data
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/Y_train.txt")
subject_train <- read.table("train/subject_train.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/Y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Import variable names
var_names <- read.table("features.txt")

# Import activity labels
activity_labels <- read.table("activity_labels.txt")

# 1. Merges the training and the test sets to create one data set
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subjects <- rbind(subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement:
extr_var <- var_names[grep("mean\\(\\)|std\\(\\)", var_names[,2]),]
x <- x[,extr_var[,1]]

# 3. Uses descriptive activity names to name the activities in the data set:
colnames(y) <- "activity"
y$activitylabel <- factor(y$activity, labels = as.character(activity_labels[,2]))
activitylabel <- y[,-1]

# 4. Appropriately labels the data set with descriptive variable names.
colnames(x) <- var_names[extr_var[,1],2]

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject:
colnames(subjects) <- "subject"
total <- cbind(x, activitylabel, subjects)
total_mean <- total %>% group_by(activitylabel, subject) %>% summarize_all(funs(mean))
write.table(total_mean, file = "Assignment4TidyData.txt", row.names = FALSE, col.names = TRUE)
