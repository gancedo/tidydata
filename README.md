# Tidy Data

This document contains the instructions for creating a **tidy dataset** from the 'UCI HAR dataset', as requested for the Course Project in 'Getting and cleaning data'. A full description of the original dataset and files is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The full description of the variables in the output dataset is given in the [codebook.rm] (https://github.com/gancedo/tidydata/blob/master/codebook.md) file.

The script 'run_analysis.R' can be run in R or R Studio to produce the tidy dataset without further intervention, provided that: 
* the input data files are availale under the working directory,
* the packages dplyr and reshape2 are already installed.

## Input data files
The following files from the UCI HAR dataset have to be copied to the working directory in R:
* 'features.txt': list of all features (measurements).
* 'activity_labels.txt': links the class labels with their activity name.
* 'subject_train.txt' : the subject who performed the activity in the train dataset.
* 'subject_test.txt': the subject who performed the activity in the test dataset.
* 'X_train.txt': Training measurements.
* 'y_train.txt': Training activity.
* 'X_test.txt': Test measurement.
* 'y_test.txt': Test activity.

## Packages
The script does not contain instructions for installing the 'dplyr' and 'reshape2' packages. They can be installed using this code:
```{r}
install.packages(dplyr)
install.packages(reshape2)
```
**Note:** The 'reshape2' package is only needed to create the long form of the tidy dataset. If you do not want to install this package, remove or comment these two last lines of the script:
```{r}
lmeandata <- melt(wmeandata, id=c("subject", "activity"))
write.table(lmeandata, "tidy_data_l.txt", append = FALSE, sep="\t", row.names=FALSE, col.names = TRUE )
```
It might also be advisable to clear the variables in the working space.
```{r}
 rm(list=ls())
 ```
## Script
These are the instructions performed by the 'run_analysis.R' script:

Put the names of the measurements from the 'features' file into a vector so that they can be used later as column names for both the training and the test data.

The first column of the 'features' file, which contains only the row numbers, is discarded and the second column with the name of the variables is kept.

With the *test data*: 
* Read the test data into a table using the column names that were put in a vector above.
* Subset for the columns labelled 'mean' and 'std', as requested in **Step 2** of the assignment. By doing it now, we remove the unnecessary columns from further processing.
* Read the file with the 'subjects' into a table.
* Read the 'activity' file into a table. Define the column as 'character' so that it is easier to re-label the activities later.
* Bind the columns of all three intermediate tables into a single table with all the test data.

Then the same process is applied to the *training data*. 

Merge the training and the test sets to create one data set (**Step 1** of the assignment).

The intermediate test and train data frames are not needed any furthr and can be removed from memory.

Use descriptive activity names to name the activities in the data set (**Step 3**).  

Appropriately label the data set with descriptive variable names (**Step 4**).
* Save column names into a new variable and modify there.
* Correct 'fBodyBody' in names, which is a mistake, remove parenthesis, separate elements in the name by dots and change to lower case. 

Apply the formatted column names to the original dataset.

Create a tidy data set with the average of each variable for each activity and each subject (**Step 5**).

The resulting tidy dataset will be in the **wide form**. Write the data frame to a text file. There is also an extra instruction to transmform it into the **long form** and write that to a different text file.

## Output
The output are two tidy text files: 
* tidy\_data\_w.txt, wide format, and
* tidy\_data\_l.txt, long format.

They can be read back into R using data.table to create a data table for inspection or further analysis:
```{r}
tidydataw <- data.table("tidy_data_w.txt")
tidydatal <- data.table("tidy_data_l.txt") 
```
