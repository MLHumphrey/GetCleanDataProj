This is the code book to be used in connection with the R programming script
run_analysis.R in this GetCleanDataProj repository.  The code book describes
the current contents of the "tidy" data set created by the script and stored
as galaxys_tidy.txt once the script is run.

Please also read the associated README file.

The information stored in the galaxys_tidy.txt file is a manipulated version
of the data available for download at the following address:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Please refer to the file: features_info.txt and README.txt as well as
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
for full details on the original data set.

In summary, that original data set contains data for thirty subjects who wore a
Samsung Galaxy S II on their waist while performing one of six activities: WALKING, 
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.  While the subjects
were performing each activity, measurements were taken using the accelerometer and
gyroscope contained in their phone.  3-axial linear acceleration measurements (labeled
X, Y, and Z) and 3-axial angular velocity measurements (labeled X, Y, and Z) were
taken, all at a constant rate of 50Hz.

This data was then pre-processed into fixed-width sliding windows of 2.56 sec and 
50% overlap (128 readings/window).  The data was split into two groups, test and train,
by participant.

The end result was two files of raw data, one for test and one for train, with 561 
columns of measurement data and multiple rows of measurements for each participant/ 
activity combination.

Participant (or subject) numbers were stored in a separate file
as were activity identifiers. So were the names for each column of data.

After loading the requisite data files (see R script for details), we performed the
following transformations:
1. Assigned column names to each of the files in the test and train data sets.  Participant
numbers were labeled as "subject", activities were labeled "activity", and measurements
were assigned the values from the features.txt file.
2. Combined subject, activity, and measurement data for the test data set and
the train data set into one table for each.
3. Combined the test and train data sets into one.
4. Reduced the data set to only the subject, activity, and those columns that were labeled as
mean() or std() measurements.
5. Converted the values in the activity column from numbers to plain English labels using the
values in the activity_labels.txt file.
6. Modified the column label names to make them more understandable:
  Acc was replaced with Acceleration
  Gyro was replaced with Gyroscope
  Mag was replaced with Magnitude
  mean() was replaced with Mean
  std() was replaced with Standard Deviation
  tBody was replaced with TimeBody
  fBody was replaced with FrequencyBody
  tGravity was replaced with TimeGravity
  BodyBody was replaced with Body
7. The data was grouped by each subject/activity combination and a mean of each measurement was
taken.  This was saved as the new data set.

The resulting file has 180 rows of data (6 rows for each of the 30 participants) that contain the
average values for each of the recorded mean and standard deviation measurements.

The first column in the data set, subject, is the number assigned to the study participant.
The second column in the data set, activity, is the activity the participant performed.

The remaining columns below are the measurements taken on those activities where X, Y, and Z represent
the 3-axial measurements for each measurement type:
TimeBodyAcceleration-Mean()-X
TimeBodyAcceleration-Mean()-Y
TimeBodyAcceleration-Mean()-Z
TimeBodyAcceleration-Standard Deviation()-X
TimeBodyAcceleration-Standard Deviation()-Y
TimeBodyAcceleration-Standard Deviation()-Z
TimeGravityAcceleration-Mean()-X
TimeGravityAcceleration-Mean()-Y
TimeGravityAcceleration-Mean()-Z
TimeGravityAcceleration-Standard Deviation()-X
TimeGravityAcceleration-Standard Deviation()-Y
TimeGravityAcceleration-Standard Deviation()-Z
TimeBodyAccelerationJerk-Mean()-X
TimeBodyAccelerationJerk-Mean()-Y
TimeBodyAccelerationJerk-Mean()-Z
TimeBodyAccelerationJerk-Standard Deviation()-X
TimeBodyAccelerationJerk-Standard Deviation()-Y
TimeBodyAccelerationJerk-Standard Deviation()-Z
TimeBodyGyroscope-Mean()-X
TimeBodyGyroscope-Mean()-Y
TimeBodyGyroscope-Mean()-Z
TimeBodyGyroscope-Standard Deviation()-X
TimeBodyGyroscope-Standard Deviation()-Y
TimeBodyGyroscope-Standard Deviation()-Z
TimeBodyGyroscopeJerk-Mean()-X
TimeBodyGyroscopeJerk-Mean()-Y
TimeBodyGyroscopeJerk-Mean()-Z
TimeBodyGyroscopeJerk-Standard Deviation()-X
TimeBodyGyroscopeJerk-Standard Deviation()-Y
TimeBodyGyroscopeJerk-Standard Deviation()-Z
TimeBodyAccelerationMagnitude-Mean()
TimeBodyAccelerationMagnitude-Standard Deviation()
TimeGravityAccelerationMagnitude-Mean()
TimeGravityAccelerationMagnitude-Standard Deviation()
TimeBodyAccelerationJerkMagnitude-Mean()
TimeBodyAccelerationJerkMagnitude-Standard Deviation()
TimeBodyGyroscopeMagnitude-Mean()
TimeBodyGyroscopeMagnitude-Standard Deviation()
TimeBodyGyroscopeJerkMagnitude-Mean()
TimeBodyGyroscopeJerkMagnitude-Standard Deviation()
FrequencyBodyAcceleration-Mean()-X
FrequencyBodyAcceleration-Mean()-Y
FrequencyBodyAcceleration-Mean()-Z
FrequencyBodyAcceleration-Standard Deviation()-X
FrequencyBodyAcceleration-Standard Deviation()-Y
FrequencyBodyAcceleration-Standard Deviation()-Z
FrequencyBodyAccelerationJerk-Mean()-X
FrequencyBodyAccelerationJerk-Mean()-Y
FrequencyBodyAccelerationJerk-Mean()-Z
FrequencyBodyAccelerationJerk-Standard Deviation()-X
FrequencyBodyAccelerationJerk-Standard Deviation()-Y
FrequencyBodyAccelerationJerk-Standard Deviation()-Z
FrequencyBodyGyroscope-Mean()-X
FrequencyBodyGyroscope-Mean()-Y
FrequencyBodyGyroscope-Mean()-Z
FrequencyBodyGyroscope-Standard Deviation()-X
FrequencyBodyGyroscope-Standard Deviation()-Y
FrequencyBodyGyroscope-Standard Deviation()-Z
FrequencyBodyAccelerationMagnitude-Mean()
FrequencyBodyAccelerationMagnitude-Standard Deviation()
FrequencyBodyAccelerationJerkMagnitude-Mean()
FrequencyBodyAccelerationJerkMagnitude-Standard Deviation()
FrequencyBodyGyroscopeMagnitude-Mean()
FrequencyBodyGyroscopeMagnitude-Standard Deviation()
FrequencyBodyGyroscopeJerkMagnitude-Mean()
FrequencyBodyGyroscopeJerkMagnitude-Standard Deviation()



