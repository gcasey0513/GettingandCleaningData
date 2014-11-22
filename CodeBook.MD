---
title: "CodeBook"
author: "George Casey"
date: "Saturday, November 22, 2014"
output: html_document
---

The Script run_analyis.R executes the following procedures:
 - reads testing and training data in from the original data set
 - merges into a single data frame
 - created column names based on column descriptions in features.txt
 - renames column names to remove illegal characters such as spaces and parentheses
 - replaces activity ID with a descriptive label
 - reducts the data frame to only those variables representing a mean or standard deviaiton per the naming
 convention of containing "mean()" or "std()"
 - summarizes and exports tidydataset.txt as table of mean values of obsertvations by subjectid and activity

The file "tidydataset.txt" contains 68, created by reducing data to only mean and standard deviation measurements from a combination of testing and training data, as well as the subject id and a decription of the activity being measured.

subjectid
activity
tBodyAcc.mean...X
tBodyAcc.mean...Y
tBodyAcc.mean...Z
tGravityAcc.mean...X
tGravityAcc.mean...Y
tGravityAcc.mean...Z
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y
tBodyAccJerk.mean...Z     
tBodyGyro.mean...X         
tBodyGyro.mean...Y
tBodyGyro.mean...Z
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y
tBodyGyroJerk.mean...Z
tBodyAccMag.mean..
tGravityAccMag.mean..       
tBodyAccJerkMag.mean..     
tBodyGyroMag.mean..         
tBodyGyroJerkMag.mean..     
fBodyAcc.mean...X           
fBodyAcc.mean...Y          
fBodyAcc.mean...Z           
fBodyAccJerk.mean...X       
fBodyAccJerk.mean...Y       
fBodyAccJerk.mean...Z      
fBodyGyro.mean...X          
fBodyGyro.mean...Y          
fBodyGyro.mean...Z          
fBodyAccMag.mean..         
fBodyBodyAccJerkMag.mean..  
fBodyBodyGyroMag.mean..     
fBodyBodyGyroJerkMag.mean.. 
tBodyAcc.std...X           
tBodyAcc.std...Y            
tBodyAcc.std...Z            
tGravityAcc.std...X         
tGravityAcc.std...Y        
tGravityAcc.std...Z         
tBodyAccJerk.std...X        
tBodyAccJerk.std...Y        
tBodyAccJerk.std...Z       
tBodyGyro.std...X           
tBodyGyro.std...Y           
tBodyGyro.std...Z           
tBodyGyroJerk.std...X      
tBodyGyroJerk.std...Y       
tBodyGyroJerk.std...Z       
tBodyAccMag.std..           
tGravityAccMag.std..       
tBodyAccJerkMag.std..       
tBodyGyroMag.std..          
tBodyGyroJerkMag.std..      
fBodyAcc.std...X           
fBodyAcc.std...Y            
fBodyAcc.std...Z            
fBodyAccJerk.std...X        
fBodyAccJerk.std...Y       
fBodyAccJerk.std...Z        
fBodyGyro.std...X           
fBodyGyro.std...Y           
fBodyGyro.std...Z          
fBodyAccMag.std..           
fBodyBodyAccJerkMag.std..   
fBodyBodyGyroMag.std..      
fBodyBodyGyroJerkMag.std.. 