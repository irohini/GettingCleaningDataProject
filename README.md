# Getting and Cleaning Data Project
##Files for Project Assignment in Getting and Cleaning Data

This repo contains files that can be used to create a tidy data set that can be used for later analysis.
The raw data can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repo contains:
* 1. README.md - explains how all of the scripts in the repo work and how they are connected.
* 2. run_analysis.R - script for performing the analysis
* 3. CodeBook.md - a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data 
* 4. tidyData.txt - a tidy data set which can be read in R using: df <- read.table("tidyData.txt", header = TRUE); View(df)

The run_analysis.R does the following in order to create the tidy data from the raw data:

* Step 0: Loads the various test and train data sets
* Step1: Merges the training and the test sets to create one data set.
* Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
* Step 3: Uses descriptive activity names to name the activities in the data set
* Step 4: Appropriately labels the data set with descriptive variable names. 
* Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each     activity and each subject.
