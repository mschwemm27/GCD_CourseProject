# Code Book for run_analysis.R

## Description from the original raw data set

Human Activity Recognition Using Smartphones Dataset
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Description of the tidy data set resulting from run_analysis.R

The tidy data set contains the means of the extracted means and standard deviations of the measurements for each subject and each activity level. The data set has 180 rows (30 subjects*6 activity levels) with 68 columns. The first two columns are:

* activity: the activity the subject performed while wearing a smartphone. Factor with 6 levels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* subject: integer from 1 to 30 uniquely identifying the subject that performed the activity.

The rest of the columns are the means of the following features for each subject and each activity level (NOTE: all features are normalized and bounded within [-1,1]):

* tBodyAcc_mean_(XYZ): mean of the time domain body acceleration signals in the (X,Y,Z) direction
* tGravityAcc_mean_(XYZ): mean of the time domain gravity acceleration signals in the (X,Y,Z) direction
* tBodyAccJerk_mean_(XYZ): mean of the time domain body acceleration jerk signals in the (X,Y,Z) direction
* tBodyGyro_mean_(XYZ): mean of the time domain gyro signals in the (X,Y,Z) direction
* tBodyGyroJerk_mean_(XYZ): mean of the time domain gyro jerk signals in the (X,Y,Z) direction
* tBodyAccMag_mean: mean of magnitude (euclidean norm) of the tBodyAcc signals 
* tGravityAccMag_mean: mean of magnitude (euclidean norm) of the tGravityAcc signals 
* tBodyAccJerkMag_mean: mean of magnitude (euclidean norm) of the tBodyAccJerk signals 
* tBodyGyroMag_mean: mean of magnitude (euclidean norm) of the tBodyGyro signals 
* tBodyGyroJerkMag_mean: mean of magnitude (euclidean norm) of the tBodyGyroJerk signals 
* fBodyAcc_mean_(XYZ): mean of the frequency domain body acceleration signals in the (X,Y,Z) direction
* fBodyAccJerk_mean_(XYZ):  mean of the frequency domain body acceleration jerk signals in the (X,Y,Z) direction
* fBodyGyro_mean_(XYZ): mean of the frequency domain gyro signals in the (X,Y,Z) direction
* fBodyAccMag_mean: mean of magnitude (euclidean norm) of the fBodyAcc signals 
* fBodyAccJerkMag_mean: mean of magnitude (euclidean norm) of the fBodyAccJerk signals 
* fBodyGyroMag_mean: mean of magnitude (euclidean norm) of the fBodyGyro signals 
* fBodyGyroJerkMag_mean: mean of magnitude (euclidean norm) of the fBodyGyroJerk signals 

* tBodyAcc_std_(XYZ): standard deviation of the time domain body acceleration signals in the (X,Y,Z) direction
* tGravityAcc_std_(XYZ): standard deviation of the time domain gravity acceleration signals in the (X,Y,Z) direction
* tBodyAccJerk_std_(XYZ): standard deviation of the time domain body acceleration jerk signals in the (X,Y,Z) direction
* tBodyGyro_std_(XYZ): standard deviation of the time domain gyro signals in the (X,Y,Z) direction
* tBodyGyroJerk_std_(XYZ): standard deviation of the time domain gyro jerk signals in the (X,Y,Z) direction
* tBodyAccMag_std: standard deviation of magnitude (euclidean norm) of the tBodyAcc signals 
* tGravityAccMag_std: standard deviation of magnitude (euclidean norm) of the tGravityAcc signals 
* tBodyAccJerkMag_std: standard deviation of magnitude (euclidean norm) of the tBodyAccJerk signals 
* tBodyGyroMag_std: standard deviation of magnitude (euclidean norm) of the tBodyGyro signals 
* tBodyGyroJerkMag_std: standard deviation of magnitude (euclidean norm) of the tBodyGyroJerk signals 
* fBodyAcc_std_(XYZ): standard deviation of the frequency domain body acceleration signals in the (X,Y,Z) direction
* fBodyAccJerk_std_(XYZ): standard deviation of the frequency domain body acceleration jerk signals in the (X,Y,Z) direction
* fBodyGyro_std_(XYZ): standard deviation of the frequency domain gyro signals in the (X,Y,Z) direction
* fBodyAccMag_std: standard deviation of magnitude (euclidean norm) of the fBodyAcc signals 
* fBodyAccJerkMag_std: standard deviation of magnitude (euclidean norm) of the fBodyAccJerk signals 
* fBodyGyroMag_std: standard deviation of magnitude (euclidean norm) of the fBodyGyro signals 
* fBodyGyroJerkMag_std: standard deviation of magnitude (euclidean norm) of the fBodyGyroJerk signals

## More information on features

From the original UCI data set: "The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012