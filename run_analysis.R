# Script to process the 'UCI HAR Dataset'
# (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
# according to the instructions of the Project
# for the course 'Getting and Cleaning Data' (Coursera)


# Type this to clear your workspace.
# rm(list=ls())

# Uncomment for installing the packages, if necessary
# install.packages(dplyr)
# install.packages(reshape2)

# Load the necessary libraries.
library(dplyr)
library(reshape2)

# Put the names of the columns of the observation files
# into a vector so that they can be used later 
# for both the training and the test data.
data_colnames <- read.table("features.txt",  
                            stringsAsFactors = FALSE)

# Since the first column is just the row numbers,
# only the second one with the labels is kept.
dcolnames <- data_colnames[,2]


# I - TEST DATA
# Read the test data into a table using the column names.
obs_test_data <- read.table("X_test.txt", 
                            col.names = dcolnames,
                            stringsAsFactors = FALSE)

# Subset for the columns labelled mean and std,
# as requested in step 2 of the assignment.
obs_test_data <- select(obs_test_data, contains(".mean."), contains (".std"))


# Read the  file with the subjects into a table.
subj_test_data <- read.table("subject_test.txt", 
                                col.names= "subject",
                                stringsAsFactors = FALSE)

# Read the activity file into a table.
# Define the column as 'character' so that it is 
# easier to re-label them later.
act_test_data <- read.table("y_test.txt", 
                                 col.names= "activity",
                                 colClasses= "character",
                                 stringsAsFactors = FALSE)

# Bind the columns of all three intermediate tables 
# into a single tablewith all the test data.
test_data <- cbind(subj_test_data, act_test_data,obs_test_data)


# II - TRAINING DATA
# Read the training data into a table using the column names.
obs_train_data <- read.table("X_train.txt", 
                            col.names = dcolnames,
                            stringsAsFactors = FALSE)

# Subset for the columns for mean and std,
# as requested in step 2 of the assignment.
obs_train_data <- select(obs_train_data, contains(".mean."), contains (".std"))


# Read the subject file into a table.
subj_train_data <- read.table("subject_train.txt", 
                                col.names= "subject",
                                stringsAsFactors = FALSE)

# Read the activity file into a table;
# define the column as 'character' so that it is 
# easier to re-label them in the next step.
act_train_data <- read.table("y_train.txt", 
                                 col.names= "activity",
                                 colClasses= "character",
                                 stringsAsFactors = FALSE)

# Bind the columns of all three tables into a single table
# with all the training data.
train_data <- cbind(subj_train_data, act_train_data, obs_train_data)


# Step 1 of the assignment:
# Merge the training and the test sets to create one data set.

wdata <- rbind(train_data, test_data)

# Remove intermediate data frames from memory.
rm(train_data, test_data, act_test_data, act_train_data)
rm(obs_test_data, obs_train_data, subj_test_data, subj_train_data)

# Step 3
# Use descriptive activity names to name the activities in the data set.
wdata$activity[wdata$activity=="1"] <- "walking"
wdata$activity[wdata$activity=="2"] <- "walking.upstairs"
wdata$activity[wdata$activity=="3"] <- "walking.downstairs"
wdata$activity[wdata$activity=="4"] <- "sitting"
wdata$activity[wdata$activity=="5"] <- "standing"
wdata$activity[wdata$activity=="6"] <- "laying"


# Step 5
# Appropriately label the data set with descriptive variable names.

# Save col names into a new variable and modify there.
dcolnames <- names(wdata)

dcolnames <- gsub("\\.\\.", "", dcolnames)

# correct fBodyBody in names, which is a mistake
dcolnames <- gsub("BodyBody", "body", dcolnames)

dcolnames <- gsub("^t", "t\\.", dcolnames)
dcolnames <- gsub("^f", "f\\.", dcolnames)
dcolnames <- gsub("Acc", "\\.acc", dcolnames)
dcolnames <- gsub("Mag", "\\.mag", dcolnames)
dcolnames <- gsub("Jerk", "\\.jerk", dcolnames)
dcolnames <- gsub("Gyro", "\\.gyro", dcolnames)

dcolnames <- tolower(dcolnames)

# Apply colnames again to the original dataset.
colnames(wdata) <- dcolnames

# Step 5
# create a tidy data set with the average 
# of each variable for each activity and each subject.

wmeandata <- wdata %>%
      group_by(subject, activity) %>%
            summarise_each(funs(mean))

# This is the wide form of the tidy datset,
write.table(wmeandata, "tidy_data_w.txt", append = FALSE, 
            sep="\t", row.names=FALSE, col.names = TRUE )

# and this is the long form.
lmeandata <- melt(wmeandata, id=c("subject", "activity"))
write.table(lmeandata, "tidy_data_l.txt", append = FALSE, sep="\t", row.names=FALSE, col.names = TRUE )
