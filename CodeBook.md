#CodeBook.md
=============================================================================================================
Project Description:
This project is taking the data obtained from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" and creating tidy data sets.
=============================================================================================================
Study design:
The original data was obtained from:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The original study design from the source above is posted below:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

The original data can be obtained here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Creating the tidy datafile:

0.Download the original raw data from the link above.
1.Merge the training and the test sets to create one data set.
2.Extract only the measurements on the mean and standard deviation for each measurement. 
3.Use descriptive activity names to name the activities in the data set
4.Appropriately label the data set with descriptive variable names. 
5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

=============================================================================================================
Code book variables:

  list of variables:

 [1] "Subject"                         "Activity"                       
 [3] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
 [7] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [9] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
[11] "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[15] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
[23] "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[27] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"              "tBodyAccMag-std()"              
[35] "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
[39] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
[47] "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[51] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
[59] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[63] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
[71] "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
[75] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()"

  Meaning: 
  -Subject: the subject that data was recorded from
  -Activity: the activity that the subject was performing while data was be recorded

  The rest of the variables are a combination of the explainations below:
  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  -tBodyAcc-XYZ:      acceleration readings from the body
  -tGravityAcc-XYZ:   acceleration readings from gravity
  -tBodyAccJerk-XYZ:  jerk derived from body linear acceleration
  -tBodyGyro-XYZ:     gyroscope readings from the body
  -tBodyGyroJerk-XYZ: jerk derived from body angular velocity
  -tBodyAccMag:       magnitude calculated using Euclidean norm from acceleration from the body
  -tGravityAccMag:    magnitude calculated using Euclidean norm from acceleration from gravity
  -tBodyAccJerkMag:   jerk magnitude derived from acceleration from the body
  -tBodyGyroMag:      magnitude calculated using Euclidean norm from angular velocity of the body
  -tBodyGyroJerkMag:  jerk magnitude derived from angular velocity of the body
  -fBodyAcc-XYZ:      Fast Fourier Transform (FFT) of linear acceleration of the body
  -fBodyAccJerk-XYZ:  Fast Fourier Transform (FFT) of linear acceleration jerk of the body
  -fBodyGyro-XYZ:     Fast Fourier Transform (FFT) of angular velocity of the body
  -fBodyAccMag:       Fast Fourier Transform (FFT) of the magnitude of the linear acceleration of the body
  -fBodyAccJerkMag:   Fast Fourier Transform (FFT) of the jerk magnitude of the linear acc of the body
  -fBodyGyroMag:      Fast Fourier Transform (FFT) of the magnitude of angular velocity of the body 
  -fBodyGyroJerkMag:  Fast Fourier Transform (FFT) of the jerk magnitude of the angular vel. of the body
  
  -mean(): Mean value
  -std(): Standard deviation
===========================================================================================================  
Sources:
  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012