#README.md
=================================================================================================================
Getting and Cleaning Data Course Project

David Liu
Coursera - John Hopkins Bloomberg School of Public Health
Getting and Cleaning Data

This project produces tidy data from raw data obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The tidy data focuses on the mean and standard deviation data from the raw data.

The tidy data was created by:
=================================================
[1].Merge the training and the test sets to create one data set.
[2].Extract only the measurements on the mean and standard deviation for each measurement. 
[3].Use descriptive activity names to name the activities in the data set
[4].Appropriately label the data set with descriptive variable names. 
[5].From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
[6].Create tidy_data.txt file


The dataset includes the following files:
=================================================================================================================
 - 'README.MD'
 - 'CodeBook.md': information about the variables in the dataset, information about the summary of choices made, and information about the exprimental study design
 - 'run_analysis.R': R scipt that produces the tidy data sets
 - 'tidy_data.txt': tidy data produced 


Acknowledgements:
==========================================================================================
Original dataset was obtained from the following source:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012