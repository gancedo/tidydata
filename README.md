# tidydata

This document contains the instructions for creating a tidy dataset from the UCI HAR dataset, as requested for the Course Project in 'Getting and cleaning data'. A full description of the original dataset is available here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The script run_analysis.R can be run in R or R Studio to produce the tidy dataset without further intervention, provided that: 
* the input data files are availale under the working directory,
* the packages dplyr and reshape2 are already installed.

## Input data files
These files from the UCI HAR dataset have to be copied to the working directory in R:
- 'features.txt': list of all features (measurements).
- 'activity_labels.txt': links the class labels with their activity name.
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.

## Packages
The script does not contain instructions for installing the dplyr and reshape2 packages. They can be installed using this code:
- install.packages(dplyr)
- install.packages(reshape2)

## Script
This are the instructions performed by the run_analysis.R script:

Put the names of the measurements from the 'features' file into a vector so that they can be used later as column names for both the training and the test data.
Since the first column of the 'features' field is just the row numbers, only the second column with the labels is kept.

With the test data: 
* Read the test data into a table using the column names that were put in a vector above.
* Subset for the columns labelled 'mean' and 'std', as requested in step 2 of the assignment.
* Read the file with the subjects into a table.
* Read the activity file into a table. Defines the column as 'character' so that it is easier to re-label the activities later.
* Bind the columns of all three intermediate tables into a single table with all the test data.

The same process is applied to the training data. 

Step 1 of the assignment: Merge the training and the test sets to create one data set.

Now the intermediate test and train data frames can be removed from memory.

Step 3 Use descriptive activity names to name the activities in the data set.

Step 5 Appropriately label the data set with descriptive variable names.

* Save column names into a new variable and modify there.
* Correct fBodyBody in names, which is a mistake
Apply colnames again to the original dataset.

Step 5 create a tidy data set with the average of each variable for each activity and each subject.


This is the wide form of the tidy datset,

and this is the long form.


## Output
The output are two tidy text files, 
* tidy_data_w.txt : wide format, and
* tidy_data_l.txr : long format.

They can be read using data.table to create a data table for inspection or further analysis.

tidydata <- data.table("tidy_data_l.txt") 
tidydata <- data.table("tidy_data_w.txt")
