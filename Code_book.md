This data originates from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, which a full description of the data available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

=============================================================================
From the original README.txt file of that data:

############################################################################
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

=======================================================================================
########################################################################################

Narrowed Data Set:
==================

I have compiled the test and training set data for the Samsung Galaxy accelerometer data into a single data set which includes the subject id, activity type duing measurement, and all values of the mean or standard deviation of a given measurement (see above description of types of measurements).
To produce this data set use run_analysis.R, which outputs a txt file of space separated values to mean_std_compiled.txt. The column names of which are listed below.

mean_std_compile.txt: 

Column Names:

"1" "id"
"2" "activity"
"3" "tBodyAcc.mean...X"
"4" "tBodyAcc.mean...Y"
"5" "tBodyAcc.mean...Z"
"6" "tGravityAcc.mean...X"
"7" "tGravityAcc.mean...Y"
"8" "tGravityAcc.mean...Z"
"9" "tBodyAccJerk.mean...X"
"10" "tBodyAccJerk.mean...Y"
"11" "tBodyAccJerk.mean...Z"
"12" "tBodyGyro.mean...X"
"13" "tBodyGyro.mean...Y"
"14" "tBodyGyro.mean...Z"
"15" "tBodyGyroJerk.mean...X"
"16" "tBodyGyroJerk.mean...Y"
"17" "tBodyGyroJerk.mean...Z"
"18" "tBodyAccMag.mean.."
"19" "tGravityAccMag.mean.."
"20" "tBodyAccJerkMag.mean.."
"21" "tBodyGyroMag.mean.."
"22" "tBodyGyroJerkMag.mean.."
"23" "fBodyAcc.mean...X"
"24" "fBodyAcc.mean...Y"
"25" "fBodyAcc.mean...Z"
"26" "fBodyAcc.meanFreq...X"
"27" "fBodyAcc.meanFreq...Y"
"28" "fBodyAcc.meanFreq...Z"
"29" "fBodyAccJerk.mean...X"
"30" "fBodyAccJerk.mean...Y"
"31" "fBodyAccJerk.mean...Z"
"32" "fBodyAccJerk.meanFreq...X"
"33" "fBodyAccJerk.meanFreq...Y"
"34" "fBodyAccJerk.meanFreq...Z"
"35" "fBodyGyro.mean...X"
"36" "fBodyGyro.mean...Y"
"37" "fBodyGyro.mean...Z"
"38" "fBodyGyro.meanFreq...X"
"39" "fBodyGyro.meanFreq...Y"
"40" "fBodyGyro.meanFreq...Z"
"41" "fBodyAccMag.mean.."
"42" "fBodyAccMag.meanFreq.."
"43" "fBodyBodyAccJerkMag.mean.."
"44" "fBodyBodyAccJerkMag.meanFreq.."
"45" "fBodyBodyGyroMag.mean.."
"46" "fBodyBodyGyroMag.meanFreq.."
"47" "fBodyBodyGyroJerkMag.mean.."
"48" "fBodyBodyGyroJerkMag.meanFreq.."
"49" "tBodyAcc.std...X"
"50" "tBodyAcc.std...Y"
"51" "tBodyAcc.std...Z"
"52" "tGravityAcc.std...X"
"53" "tGravityAcc.std...Y"
"54" "tGravityAcc.std...Z"
"55" "tBodyAccJerk.std...X"
"56" "tBodyAccJerk.std...Y"
"57" "tBodyAccJerk.std...Z"
"58" "tBodyGyro.std...X"
"59" "tBodyGyro.std...Y"
"60" "tBodyGyro.std...Z"
"61" "tBodyGyroJerk.std...X"
"62" "tBodyGyroJerk.std...Y"
"63" "tBodyGyroJerk.std...Z"
"64" "tBodyAccMag.std.."
"65" "tGravityAccMag.std.."
"66" "tBodyAccJerkMag.std.."
"67" "tBodyGyroMag.std.."
"68" "tBodyGyroJerkMag.std.."
"69" "fBodyAcc.std...X"
"70" "fBodyAcc.std...Y"
"71" "fBodyAcc.std...Z"
"72" "fBodyAccJerk.std...X"
"73" "fBodyAccJerk.std...Y"
"74" "fBodyAccJerk.std...Z"
"75" "fBodyGyro.std...X"
"76" "fBodyGyro.std...Y"
"77" "fBodyGyro.std...Z"
"78" "fBodyAccMag.std.."
"79" "fBodyBodyAccJerkMag.std.."
"80" "fBodyBodyGyroMag.std.."
"81" "fBodyBodyGyroJerkMag.std.."
