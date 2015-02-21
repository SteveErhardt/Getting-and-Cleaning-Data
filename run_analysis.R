## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Install required packages if not insatlled

if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("reshape2")) {
  install.packages("reshape2")
}
if (!require("httr")) {
  install.packages("reshape2")
}
## Load the required packages
require("data.table")
require("reshape2")
require("httr")

##create a data directory

if (!file.exists("data")){
  dir.create("data")
}

##Download the dataset

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip")
list.files("./data")

## Unzip the files

unzip("./data/dataset.zip")

## Load: activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

## Load: data column names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

## Extract only the measurements on the mean and standard deviation for each measurement.
extractFeatures <- grepl("mean|std", features)

## Load X_test & y_test & subject test data.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Get the names
names(X_test) = features

## Extract only the measurements on the mean and standard deviation for each measurement.
X_test = X_test[,extractFeatures]

## Load activity labels
y_test[,2] = activityLabels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

## Bind data
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

## Load X_train & y_train data.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(X_train) = features

## Extract only the measurements on the mean and standard deviation for each measurement.
X_train = X_train[,extractFeatures]

## Load activity data
y_train[,2] = activityLabels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# Bind data
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

# Merge test and train data
data = rbind(test_data, train_data)

idLabels   = c("subject", "Activity_ID", "Activity_Label")
dataLabels = setdiff(colnames(data), idLabels)
meltData      = melt(data, id = idLabels, measure.vars = dataLabels)

# Apply mean function using dcast function
tidyData   = dcast(meltData, subject + Activity_Label ~ variable, mean)

write.table(tidyData, file = "./tidyData.txt", row.names=FALSE)