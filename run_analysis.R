# Getting and Cleaning Data - Project to create a tidy data file
# Author: RSI
# Date: 9/24/15

library(plyr)
library(reshape2)

# This program creates a wide tidy-data set layout.
# Note that both wide and long tidy data formats are 
# acceptable tidy data files for the assignment solution.

# The tidy data file is created using write.table() in a machine friendly format which
# is acceptable for the project. You can use the following commands in R in order to
# read in the tidy_data.txt file to view format properly
#df <- read.table("tidyData.txt", header = TRUE)
#View(df)


# NOTES:
# Raw data is available at:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# download the zipped file using download.file() in R.

# The assumption below is that the files have been unzipped and you are in the 
# ~/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset directory.

############
# Step 0: Load test and train datasets
############

xtest <- read.table("./test/X_test.txt")
#dim(xtest)
#[1] 2947  561

xtrain <- read.table("./train/X_train.txt")
#dim(xtrain)
#[1] 7352  561

ytest <- read.table("./test/y_test.txt")
ytrain <- read.table("./train/y_train.txt")

subtest <- read.table("./test/subject_test.txt")
subtrain <- read.table("./train/subject_train.txt")

feat <- read.table("./features.txt")
act <- read.table("./activity_labels.txt")


############
# Step 1: Merges test and training dataset using rbind and 
# puts appropriate header
############

# merges test and training datasets xtest and xtrain and
# adds header (use features.txt for 1-561 columns)
testtrain <- rbind(xtest, xtrain)
#dim(testtrain)
#[1] 10299   561
colnames(testtrain) <- feat[,2]

#merges test and training subject dataset and adds header
subtesttrain <- rbind(subtest, subtrain)
#dim(subtesttrain)
#[1] 10299     1
colnames(subtesttrain) <- "Subject"

#merges test and training activity y label dataset and adds header
ytesttrain <- rbind(ytest, ytrain)
#dim(ytesttrain)
#[1] 10299     1
colnames(ytesttrain) <- "Activity"

########
# Step 2 Extract only columns with mean and std (note this extracts all columns
#with mean/Mean and std in it, not just mean() and std())
#########

testtrainmeanstd <- testtrain[, grep("mean|std", names(testtrain), ignore.case = TRUE)]
#dim(testtrainmeanstd)
#[1] 10299    86
sum(is.na(testtrainmeanstd))
#[1] 0


#########
# Step 3 Use descriptive activity names to name the activities 
# in the y test and y traindata set
#########

ytesttrainlabel <- data.frame(act$V2[match(ytesttrain$Activity, act$V1)])
colnames(ytesttrainlabel) <- "Activity_Type"       
        
########
# Step 4a Appropriately label the data set with descriptive variable names
########

# Already done in Step 2 and Step 3, but will clean up header to be more clear
# for columns 1-86

names(testtrainmeanstd) <- gsub("Acc", "Accelerator", names(testtrainmeanstd))
names(testtrainmeanstd) <- gsub("Mag", "Magnitude", names(testtrainmeanstd))
names(testtrainmeanstd) <- gsub("Gyro", "Gyroscope", names(testtrainmeanstd))
names(testtrainmeanstd) <- gsub("^t", "time", names(testtrainmeanstd))
names(testtrainmeanstd) <- gsub("^f", "frequency", names(testtrainmeanstd))


########
#Step 4b Create final merged data table for mean and std 
# with activity test/train label and Subject
#########

merged <- cbind(subtesttrain, ytesttrainlabel, testtrainmeanstd)
#has 86 col for test and train observations + 2 for activity ytest label 
#and subject label
#dim(merged)
#[1] 10299   88


##########
# Step 5 From the data set in step 4, creates a second, independent tidy dataset 
# with the average of each variable for each activity and each subject
##########

mergedMelt <- melt(merged, id = c("Subject", "Activity_Type"))
#dim(mergedMelt)
#[1] 885714      4
tidydata <- dcast(mergedMelt, Subject + Activity_Type ~ variable, mean)
#dim(tidydata)
#[1] 180  88


########
# Finally, writing out the tidydata dataset from Step 5 to a txt file
########

write.table(tidydata, "tidyData.txt", row.name=FALSE)

# In order read the tidy data file in correct format, load and view the tidy data txt file created
#df <- read.table("tidyData.txt", header = TRUE)
#View(df)

