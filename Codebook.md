run_analysis.R


Study Design
------------


One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and 
Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected 
from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Code Book
---------


These variables identify the unique subject/activity pair the variables relate to:

	subject: the integer subject ID.
	Activity_Label: the string activity name:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

These variable specify the mean of a measurement for each activity.

Time domain body acceleration mean along X, Y, and Z:
	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
Time domain body acceleration standard deviation along X, Y, and Z:
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
Time domain gravity acceleration mean along X, Y, and Z:
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
Time domain gravity acceleration standard deviation along X, Y, and Z:
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
Time domain body jerk mean along X, Y, and Z:
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
Time domain body jerk standard deviation along X, Y, and Z:
 	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
Time domain gyroscope mean along X, Y, and Z:
	tBodyGyro-mean()-X 
	tBodyGyro-mean()-Y 
	tBodyGyro-mean()-Z 
Time domain gyroscope standard deviation along X, Y, and Z:
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
Time domain gyroscope jerk mean along X, Y, and Z:
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
Time domain gyroscope jerk standard deviation along X, Y, and Z:
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
Time domain body acceleration magnitude mean:
	tBodyAccMag-mean()
Time domain body acceleration magnitude standard deviation:
	tBodyAccMag-std()
Time domain gravity acceleration magnitude mean:
	tGravityAccMag-mean()
Time domain gravity acceleration magnitude standard deviation:
	tGravityAccMag-std()
Time domain body jerk magnitude mean:
	tBodyAccJerkMag-mean()
Time domain body jerk magnitude standard deviation:
	tBodyAccJerkMag-std()
Time domain gyroscope magnitude mean:
	tBodyGyroMag-mean()
Time domain gyroscope magnitude standard deviation:
	tBodyGyroMag-std()
Time domain gyroscope jerk magnitude mean:
	tBodyGyroJerkMag-mean()
Time domain gyroscope jerk magnitude standard deviation:
	tBodyGyroJerkMag-std()
Frequency domain body acceleration mean along X, Y, and Z:
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
Frequency domain body acceleration standard deviation along X, Y, and Z:
	fBodyAcc-std()-X 
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
Frequency domain body acceleration mean frequency along X, Y, and Z:
	fBodyAcc-meanFreq()-X
	fBodyAcc-meanFreq()-Y
	fBodyAcc-meanFreq()-Z
Frequency domain body jerk mean along X, Y, and Z:
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
Frequency domain body jerk standard deviation along X, Y, and Z:
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
Frequency domain body jerk mean frequency along X, Y, and Z:
	fBodyAccJerk-meanFreq()-X
	fBodyAccJerk-meanFreq()-Y
	fBodyAccJerk-meanFreq()-Z
Frequency domain gyroscope mean along X, Y, and Z:
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
Frequency domain gyroscope standard deviation along X, Y, and Z:
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
Frequency domain gyroscope mean frequency along X, Y, and Z:
	fBodyGyro-meanFreq()-X
	fBodyGyro-meanFreq()-Y
	fBodyGyro-meanFreq()-Z
Frequency domain body acceleration magnitude mean:
	fBodyAccMag-mean()
Frequency domain body acceleration magnitude standard deviation:
	fBodyAccMag-std()
Frequency domain body acceleration magnitude mean frequency:
	fBodyAccMag-meanFreq()
Frequency domain body acceleration jerk magnitude mean:
	fBodyBodyAccJerkMag-mean()
Frequency domain body acceleration jerk magnitude standard deviation:
	fBodyBodyAccJerkMag-std()
Frequency domain body acceleration jerk magnitude mean frequency:	
	fBodyBodyAccJerkMag-meanFreq()
Frequency domain  body gyroscope magnitude mean:
	fBodyBodyGyroMag-mean()
Frequency domain gyroscope magnitude standard deviation:
	fBodyBodyGyroMag-std()
Frequency domain body gyroscope magnitude mean frequency:	
	fBodyBodyGyroMag-meanFreq()
Frequency domain body gyroscope jerk magnitude mean:
	fBodyBodyGyroJerkMag-mean()
Frequency domain gyroscope jerk magnitude standard deviation:
	fBodyBodyGyroJerkMag-std()
Frequency domain body gyroscope jerk magnitude mean frequency:
	fBodyBodyGyroJerkMag-meanFreq()
 
