

# Check to see, if required packages are installed. In case packages are not
# available on the system, install them.
if (!"dplyr" %in% installed.packages()) {
  warning("Package dplyr required for this script. Installing dplyr now.")
  install.packages("dplyr")
}

# Load package
library(dplyr)

# Download data file from web
zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipName <- "HAR_Dataset.zip"

if (file.exists(zipFileName)) {
  download.file(zipURL, zipName, method="curl", mode = "wb")
}

# Unpack "HAR_Dataset.zip"
dataDir <- "UCI HAR Dataset"
if (!dir.exists(dataDir)) {
  unzip(zipName)
}

# Reading training data
trainSubject = read.table(file.path(dataDir, "train", "subject_train.txt", sep = ''),
                          col.names = c("personID"))
trainData = read.table(file.path(dataDir, "train", "X_train.txt", sep = ''))
trainlabel = read.table(file.path(dataDir, "train", "y_train.txt", sep = ''))

# Reading test data
testSubject = read.table(file.path(dataDir, "test", "subject_test.txt", sep = ''),
                          col.names = c("personID"))
testData = read.table(file.path(dataDir, "test", "X_test.txt", sep = ''))
testlabel = read.table(file.path(dataDir, "test", "y_test.txt", sep = ''))

# Reading activity data into table
activityLabels <- read.table(file.path(dataDir, "activity_labels.txt", sep = ''),
                             col.names = c("activityId", "activityLabel"), 
                             stringsAsFactors=FALSE)





