## Getting and Cleaning Data Course Project
## David Liu
## Coursera - John Hopkins Bloomberg School of Public Health
## Getting and Cleaning Data
## Date: 10/25/2015

library(plyr)
library(data.table)

##reading data into R

#reading features and activity_labels
setwd("UCI HAR Dataset")
features<-read.table("features.txt")
activity_labels<-read.table("activity_labels.txt")

#reading data for train
setwd("UCI HAR Dataset/train")
subject_train<-read.table("subject_train.txt")
X_train<-read.table("X_train.txt")
y_train<-read.table("y_train.txt")

#reading data for test
setwd("..")
setwd("UCI HAR Dataset/test")
subject_test<-read.table("subject_test.txt")
X_test<-read.table("X_test.txt")
y_test<-read.table("y_test.txt")


#Step 1: Merges the training and the test sets to create one data set
merged_data_train<-cbind(subject_train,y_train,X_train)
merged_data_test<-cbind(subject_test,y_test,X_test)
merged_data<-rbind(merged_data_train,merged_data_test)

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
features_match_mean<-grepl("mean",features[,2]) #find any features containing the string: "mean"
features_match_std<-grepl("std",features[,2])   #find any features containing the string: "std"
features_mean_std<-features_match_mean | features_match_std #combining mean and std
mean_std<-c("TRUE","TRUE",features_mean_std) #adding 2 logical TRUE's in front to account for 1st two columns in merged_data
data_mean_std<-merged_data[,mean_std]

#Step 3: Uses descriptive activity names to name the activities in the data set
data_mean_std$V1.1[data_mean_std$V1.1==1]<-toString(activity_labels[1,2])
data_mean_std$V1.1[data_mean_std$V1.1==2]<-toString(activity_labels[2,2])
data_mean_std$V1.1[data_mean_std$V1.1==3]<-toString(activity_labels[3,2])
data_mean_std$V1.1[data_mean_std$V1.1==4]<-toString(activity_labels[4,2])
data_mean_std$V1.1[data_mean_std$V1.1==5]<-toString(activity_labels[5,2])
data_mean_std$V1.1[data_mean_std$V1.1==6]<-toString(activity_labels[6,2])

#Step 4: Appropriately labels the data set with descriptive variable names.
colnames(data_mean_std)<-c("Subject","Activity")
variable_names<-features$V2[features_mean_std]
variable_names<-lapply(variable_names,toString)
colnames(data_mean_std)[3:81]<-variable_names

#Step 5: From the data set in step 4, creates a second, independent tidy data 
#        set with the average of each variable for each activity and each subject.
tidy_data<-ddply(data_mean_std,.(Subject,Activity),numcolwise(mean))

#Step 6: creating tidy data txt file
write.table(tidy_data,file="tidy_data.txt",row.names = FALSE)

