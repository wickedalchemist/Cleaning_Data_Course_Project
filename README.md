Cleaning_Data_Course_Project
============================

Files for Getting and Cleaning Data's Course Project


In this README I describe the processes of getting, cleaning, and compiling the various data sets associated with the Samsung Galaxy accelerameter data (available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

1.) Download zip file from link above
  README file in UCI HAR Dataset directory explains what is in each file/directory
  
2.) Read in the test/train files as tables and convert to data frames.
  These are the values for the measurements and have no identifying characteristics (e.g. subject or activity)
3.) Open test/train files that have activity type.
  These files (y_test/train.txt) are a single array the same length as x_test/train.txt that correspond 1-to-1 with the type of activity being preformed with the measured acceleramoeter data

4.) Append the activity type (natively 1-6, but I have substituted a more description word for each activity) to the data from step (2)

5.) Open the subject identification file and extract array
  This array is a 1-to-1 correlation of subject with measurements

6.) Append the subject id to the data extracted from step (2).

7.) Change the column names to be more descriptive/intuitive
  Do this by opening the features.txt file (which lists the measurement of each column). These are not syntactically compatible with R.
  Alter column names to be usable in R with make.names() and attach to data set.
  This is the complete data set. The first column is the subject id, the second the activity type, and the rest are those columns with the measurements from step (2) above.
  The dimmensions of this set are 10299x563.

8.) We only want columns that are mean and/or standard deviations of the acceleramoeter measurements. Do a search on the column names to find mean() and std() and pick out these indicies. 

9.) Subset the complete data set by the indicies from step (8) above.
  This narrowed array has dimmensions 10299x81 - which 2 columns for id and activity type and 27 for those mean/std variables picked out from the complete data set as in step (8).

10.) Write out narrowed array to file.

