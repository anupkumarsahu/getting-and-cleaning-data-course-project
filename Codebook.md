---
title: "Codebook for getting and cleaning data project"
output: html_document
---
This code book describes variables, data and transformation performed to clean up data and compute means.

## Source Data
Zip file containing source date is located at the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variable

The tidy data set contains :

- an identifier of the subject who carried out the experiment (Subject). Its range is from 1 to 30.
- an activity label (Activity): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- mean of all other variables are measurement collected from the accelerometer and gyroscope 3-axial raw signal (numeric value)

## The script run_analysis.R performs the 5 steps described in the course project's definition.

- trainData, trainLabel, trainSubject, testData, testLabel and testSubject contain the data from the downloaded files.
- all the similar data are merged using the rbind() function to produce theData.
- only those columns with the mean and standard deviation measures are taken from the whole dataset.These columns are given the correct names, taken from features.txt.
- we take the activity names and IDs from activity_labels.txt and they are substituted in the dataset.
- columns with vague column names are corrected.
- generate a new dataset with all the average measures for each subject and activity type. The output file is called tidy_data.txt, and uploaded to this repository.
