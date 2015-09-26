#  Human Activity Recognition Using Smartphones Dataset
=======================================================
This CodeBook.md file explains how the original data set is created and the various files that are provided.
* It provides a description of all the variables and the data files.
* It also describes any transformations and work performed to clean up the provided data using run_analysis.R in order to create the tidy data set.
* The tidy data was created using the wide form layout and the final data set which includes all variables with mean and standard deviation is of dimension 180 x 88. It provides the average of each variable for each activity and each subject. 

### Note: Since all the features are normalized, there is no units for the variables.

## Information about provided data set
========================================
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws



## Transformations applied using run_analysis.R to clean up data set provided to create a tidy data set with only mean and standard deviation variables.
=================================================================


The following steps were undertaken in order to transform the data:

### The R script called run_analysis.R does the following:
 
* Merges the training and the test sets (X_train.txt, X_test.txt)  to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 

* Uses descriptive activity names to name the activities in the data set where the values in the y_test.txt and y_train.txt are replaced by:

### ACTIVITY LIST (given in activity_labels.txt)
================

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


* Appropriately labels the data set with descriptive variable names. (see list below under features)

* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This forms the tidy_data.txt file uploaded in assignment.


## Names of feature variables in the tidy data set
===================================================

 [1] "Subject"                                             
 [2] "Activity_Type"                                       
 [3] "timeBodyAccelerator.mean...X"                        
 [4] "timeBodyAccelerator.mean...Y"                        
 [5] "timeBodyAccelerator.mean...Z"                        
 [6] "timeBodyAccelerator.std...X"                         
 [7] "timeBodyAccelerator.std...Y"                         
 [8] "timeBodyAccelerator.std...Z"                         
 [9] "timeGravityAccelerator.mean...X"                     
[10] "timeGravityAccelerator.mean...Y"                     
[11] "timeGravityAccelerator.mean...Z"                     
[12] "timeGravityAccelerator.std...X"                      
[13] "timeGravityAccelerator.std...Y"                      
[14] "timeGravityAccelerator.std...Z"                      
[15] "timeBodyAcceleratorJerk.mean...X"                    
[16] "timeBodyAcceleratorJerk.mean...Y"                    
[17] "timeBodyAcceleratorJerk.mean...Z"                    
[18] "timeBodyAcceleratorJerk.std...X"                     
[19] "timeBodyAcceleratorJerk.std...Y"                     
[20] "timeBodyAcceleratorJerk.std...Z"                     
[21] "timeBodyGyroscope.mean...X"                          
[22] "timeBodyGyroscope.mean...Y"                          
[23] "timeBodyGyroscope.mean...Z"                          
[24] "timeBodyGyroscope.std...X"                           
[25] "timeBodyGyroscope.std...Y"                           
[26] "timeBodyGyroscope.std...Z"                           
[27] "timeBodyGyroscopeJerk.mean...X"                      
[28] "timeBodyGyroscopeJerk.mean...Y"                      
[29] "timeBodyGyroscopeJerk.mean...Z"                      
[30] "timeBodyGyroscopeJerk.std...X"                       
[31] "timeBodyGyroscopeJerk.std...Y"                       
[32] "timeBodyGyroscopeJerk.std...Z"                       
[33] "timeBodyAcceleratorMagnitude.mean.."                 
[34] "timeBodyAcceleratorMagnitude.std.."                  
[35] "timeGravityAcceleratorMagnitude.mean.."              
[36] "timeGravityAcceleratorMagnitude.std.."               
[37] "timeBodyAcceleratorJerkMagnitude.mean.."             
[38] "timeBodyAcceleratorJerkMagnitude.std.."              
[39] "timeBodyGyroscopeMagnitude.mean.."                   
[40] "timeBodyGyroscopeMagnitude.std.."                    
[41] "timeBodyGyroscopeJerkMagnitude.mean.."               
[42] "timeBodyGyroscopeJerkMagnitude.std.."                
[43] "frequencyBodyAccelerator.mean...X"                   
[44] "frequencyBodyAccelerator.mean...Y"                   
[45] "frequencyBodyAccelerator.mean...Z"                   
[46] "frequencyBodyAccelerator.std...X"                    
[47] "frequencyBodyAccelerator.std...Y"                    
[48] "frequencyBodyAccelerator.std...Z"                    
[49] "frequencyBodyAccelerator.meanFreq...X"               
[50] "frequencyBodyAccelerator.meanFreq...Y"               
[51] "frequencyBodyAccelerator.meanFreq...Z"               
[52] "frequencyBodyAcceleratorJerk.mean...X"               
[53] "frequencyBodyAcceleratorJerk.mean...Y"               
[54] "frequencyBodyAcceleratorJerk.mean...Z"               
[55] "frequencyBodyAcceleratorJerk.std...X"                
[56] "frequencyBodyAcceleratorJerk.std...Y"                
[57] "frequencyBodyAcceleratorJerk.std...Z"                
[58] "frequencyBodyAcceleratorJerk.meanFreq...X"           
[59] "frequencyBodyAcceleratorJerk.meanFreq...Y"           
[60] "frequencyBodyAcceleratorJerk.meanFreq...Z"           
[61] "frequencyBodyGyroscope.mean...X"                     
[62] "frequencyBodyGyroscope.mean...Y"                     
[63] "frequencyBodyGyroscope.mean...Z"                     
[64] "frequencyBodyGyroscope.std...X"                      
[65] "frequencyBodyGyroscope.std...Y"                      
[66] "frequencyBodyGyroscope.std...Z"                      
[67] "frequencyBodyGyroscope.meanFreq...X"                 
[68] "frequencyBodyGyroscope.meanFreq...Y"                 
[69] "frequencyBodyGyroscope.meanFreq...Z"                 
[70] "frequencyBodyAcceleratorMagnitude.mean.."            
[71] "frequencyBodyAcceleratorMagnitude.std.."             
[72] "frequencyBodyAcceleratorMagnitude.meanFreq.."        
[73] "frequencyBodyBodyAcceleratorJerkMagnitude.mean.."    
[74] "frequencyBodyBodyAcceleratorJerkMagnitude.std.."     
[75] "frequencyBodyBodyAcceleratorJerkMagnitude.meanFreq.."
[76] "frequencyBodyBodyGyroscopeMagnitude.mean.."          
[77] "frequencyBodyBodyGyroscopeMagnitude.std.."           
[78] "frequencyBodyBodyGyroscopeMagnitude.meanFreq.."      
[79] "frequencyBodyBodyGyroscopeJerkMagnitude.mean.."      
[80] "frequencyBodyBodyGyroscopeJerkMagnitude.std.."       
[81] "frequencyBodyBodyGyroscopeJerkMagnitude.meanFreq.."  
[82] "angle.tBodyAcceleratorMean.gravity."                 
[83] "angle.tBodyAcceleratorJerkMean..gravityMean."        
[84] "angle.tBodyGyroscopeMean.gravityMean."               
[85] "angle.tBodyGyroscopeJerkMean.gravityMean."           
[86] "angle.X.gravityMean."                                
[87] "angle.Y.gravityMean."                                
[88] "angle.Z.gravityMean."                                



# Information about features
=============================


The features selected to be part of the tidy data set only contain features that have mean and standard deviation measurements. This reduces the original data set from 561 features to 86 features in the tidy data set.

Below is a description of all the features in the original data set.

### Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
 
