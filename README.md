# Getting and Cleaning Data Assignment
Coursera - Data Science Specialization - Getting and Cleaning Data Assignment 

# Introduction
This repository is created for the assignment to finish the Getting and Cleaning Data course at Coursera which is part of the Data Science Specialization. To finish the course it is required to submit:
1. A tidy data set, 
2. A link to a Github repository with the script for performing the analysis, 
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4. A README.md in the repo which explains how all of the scripts work and how they are connected.

# Data description
The dataset consist of sensor data obtained from Samsung Galaxt SII smartphones. A group of 30 volunteers (between the age of 19-48) performed six activities wearing a smartphone on the waist. Using its embedded accelerometer and gyroscope data could be obtained. The x-variabele is hereby the sensor signals measured with the smartphone and the y-variable indicates the activity type performed. The activities were qalking, walking upstairs, walking downstairs, sitting, standing and laying. 

A full description of the dataset is available at the website where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


# Code description
The script is called run_analysis.R and does the following:
- Combines the training and the test sets
- Extracts partial variables
- Appropriately labels the data set with descriptive variable names
- Creates a second dataset with the average of each variable for each activity. So each row is an average of each activity type for all subjects. The variables are based on the standard deviation and the mean.
