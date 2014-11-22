#!


library(data.table)
#1.Merges the training and the test sets to create one data set.

#read test observations
x_test<-read.table("~/Coursera/Getting and Cleaning Data/test/X_test.txt")

#read test labels
y_test<-read.table("~/Coursera/Getting and Cleaning Data/test/y_test.txt")

#read test subjects
subject_test<-read.table("~/Coursera/Getting and Cleaning Data/test/subject_test.txt")

#combine subects, labels, and test observations
test<-cbind(subject_test, y_test, x_test)

#read test observations
x_train<-read.table("~/Coursera/Getting and Cleaning Data/train/X_train.txt")

#read test labels
y_train<-read.table("~/Coursera/Getting and Cleaning Data/train/y_train.txt")

#read test subjects
subject_train<-read.table("~/Coursera/Getting and Cleaning Data/train/subject_train.txt")

#combine subects, labels, and test observations
train<-cbind(subject_train, y_train, x_train)

all<-rbind(test,train)

#read in variable names
column_labels<-read.table("~/Coursera/Getting and Cleaning Data/features.txt")
mynames<-column_labels[,2]
colnames(all)<-c("subjectid", "activity", make.names(mynames))


#remove illegal characters


#2.Extracts only the measurements on the mean and standard deviation for each measurement. 

mycols<-c(grep("mean\\(\\)", mynames), grep("std\\(\\)", mynames)) #evalute which columns have "std()" or "mean()"
mycols<-mycols+2 # add 2 to all reference column indices to allow for subjectid and activity

final<-all[,c(1,2,mycols)]

#3.Uses descriptive activity names to name the activities in the data set

#read in activity labels
activity_labels<-read.table("~/Coursera/Getting and Cleaning Data/activity_labels.txt")
colnames(activity_labels)<-c("id","activity")
#replace the activity value in the all data frame by looking up the label based on ID
all$activity<-activity_labels$activity[match(all$activity, activity_labels$id)]



#5.From the data set in step 4, creates a second, independent tidy data set with the average of 
#each variable for each activity and each subject.

# convert to data table

final<-data.table(final)

#create summary by subject and activity
summary_dt<- final[, lapply(.SD, mean), by = c("subjectid","activity")]



