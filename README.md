# GCD_CourseProject

This repository contains the script run_analysis.R which is used to clean the raw data from the Human Activity Recognition Using Smartphones Data Set from the machine learning repository at UC Irvine.  

## Brief information about the raw data set

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Information about the analysis script

The script run_analysis.R is used to 

* Read in the training and testing data sets
* Apply descriptive labels to data set
* Merge the training and testing data sets
* Extract the columns from the raw data set that contain the mean and standard deviations of the measurements
* Create a new tidy data set that contains the means of each of the extracted features for every subject and every activity level
* Write the tidy data to a .txt file

The file tidy_data.txt included in the repository is the end result of running the script run_analysis.R.

NOTE: The script run_analysis.R assumes that the following files from the UCI data set are in the working directory:

* X_train.txt
* y_train.txt
* X_test.txt
* y_test.txt
* subject_train.txt
* subject_test.txt
* features.txt
* activity_labels.txt