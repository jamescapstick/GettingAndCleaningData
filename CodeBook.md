Feature Selection 
=================

The features selected for the raw data from this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For each subject and activity, the means of these observations were then calculated and collated to give the columns listed below.

Subject .identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
Activity .activity performed by the subject
	1 .WALKING
	2 .WALKING_UPSTAIRS
	3 .WALKING_DOWNSTAIRS
	4 .SITTING
	5 .STANDING
	6 .LAYING
tBodyAcc-mean()-X .mean of the observed mean values of subject's body acceleration from the accelerometer in the X direction
tBodyAcc-mean()-Y .mean of the observed mean values of subject's body acceleration from the accelerometer in the Y direction
tBodyAcc-mean()-Z .mean of the observed mean values of subject's body acceleration from the accelerometer in the Z direction
tBodyAcc-std()-X .mean of the observed standard deviations of subject's body acceleration from the accelerometer in the X direction
tBodyAcc-std()-Y .mean of the observed standard deviations of subject's body acceleration from the accelerometer in the Y direction
tBodyAcc-std()-Z .mean of the observed standard deviations of subject's body acceleration from the accelerometer in the Z direction
tGravityAcc-mean()-X .mean of the observed mean values of subject's acceleration owing to gravity from the accelerometer in the X direction
tGravityAcc-mean()-Y .mean of the observed mean values of subject's acceleration owing to gravity from the accelerometer in the Y direction
tGravityAcc-mean()-Z .mean of the observed mean values of subject's acceleration owing to gravity from the accelerometer in the Z direction
tGravityAcc-std()-X .mean of the observed standard deviations of subject's acceleration owing to gravity from the accelerometer in the X direction
tGravityAcc-std()-Y .mean of the observed standard deviations of subject's acceleration owing to gravity from the accelerometer in the Y direction
tGravityAcc-std()-Z .mean of the observed standard deviations of subject's acceleration owing to gravity from the accelerometer in the Z direction
tBodyAccJerk-mean()-X .mean of the mean jerk signals derived from body linear acceleration from the accelerometer in the X direction
tBodyAccJerk-mean()-Y .mean of the mean jerk signals derived from body linear acceleration from the accelerometer in the Y direction
tBodyAccJerk-mean()-Z .mean of the mean jerk signals derived from body linear acceleration from the accelerometer in the Z direction
tBodyAccJerk-std()-X .mean of the jerk signals standard deviations derived from body linear acceleration from the accelerometer in the X direction
tBodyAccJerk-std()-Y .mean of the jerk signals standard deviations derived from body linear acceleration from the accelerometer in the Y direction
tBodyAccJerk-std()-Z .mean of the jerk signals standard deviations derived from body linear acceleration from the accelerometer in the Z direction
tBodyGyro-mean()-X .mean of the observed mean values of subject's body acceleration from the gyroscope in the X direction
tBodyGyro-mean()-Y .mean of the observed mean values of subject's body acceleration from the gyroscope in the Y direction
tBodyGyro-mean()-Z .mean of the observed mean values of subject's body acceleration from the gyroscope in the Z direction
tBodyGyro-std()-X .mean of the observed standard deviations of subject's body acceleration from the gyroscope in the X direction
tBodyGyro-std()-Y .mean of the observed standard deviations of subject's body acceleration from the gyroscope in the Y direction
tBodyGyro-std()-Z .mean of the observed standard deviations of subject's body acceleration from the gyroscope in the Z direction
tBodyGyroJerk-mean()-X .mean of the mean jerk signals derived from body angular velocity from the gyroscope in the X direction
tBodyGyroJerk-mean()-Y .mean of the mean jerk signals derived from body angular velocity from the gyroscope in the Y direction
tBodyGyroJerk-mean()-Z .mean of the mean jerk signals derived from body angular velocity from the gyroscope in the Z direction
tBodyGyroJerk-std()-X .mean of the jerk signals standard deviations derived from body angular velocity from the gyroscope in the X direction
tBodyGyroJerk-std()-Y .mean of the jerk signals standard deviations derived from body angular velocity from the gyroscope in the Y direction
tBodyGyroJerk-std()-Z .mean of the jerk signals standard deviations derived from body angular velocity from the gyroscope in the Z direction
tBodyAccMag-mean() .mean of the mean magnitude of the subject's body acceleration from the accelerometer
tBodyAccMag-std() .mean of the magnitude standard deviation of the subject's body acceleration from the accelerometer
tGravityAccMag-mean() .mean of the mean magnitude of the subject's acceleration owing to gravity from the accelerometer
tGravityAccMag-std() .mean of the magnitude standard deviation of the subject's acceleration owing to gravity from the accelerometer
tBodyAccJerkMag-mean() .mean of the mean magnitude of jerk signals derived from body linear acceleration from the accelerometer
tBodyAccJerkMag-std() .mean of the magnitude standard deviation of jerk signals derived from body linear acceleration from the accelerometer
tBodyGyroMag-mean() .mean of the mean magnitude of the subject's body acceleration from the gyroscope
tBodyGyroMag-std() .mean of the magnitude standard deviation of the subject's body acceleration from the gyroscope
tBodyGyroJerkMag-mean() .mean of the mean magnitude of jerk signals derived from body angular velocity from the gyroscope
tBodyGyroJerkMag-std() .mean of the magnitude standard deviation of jerk signals derived from body angular velocity from the gyroscope
fBodyAcc-mean()-X .FFT of tBodyAcc-mean()-X
fBodyAcc-mean()-Y .FFT of tBodyAcc-mean()-Y
fBodyAcc-mean()-Z .FFT of tBodyAcc-mean()-Z
fBodyAcc-std()-X .FFT of tBodyAcc-std()-X
fBodyAcc-std()-Y .FFT of tBodyAcc-std()-Y
fBodyAcc-std()-Z .FFT of tBodyAcc-std()-Z
fBodyAccJerk-mean()-X .FFT of tBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y .FFT of tBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z .FFT of tBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X .FFT of tBodyAccJerk-std()-X
fBodyAccJerk-std()-Y .FFT of tBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z .FFT of tBodyAccJerk-std()-Z
fBodyGyro-mean()-X .FFT of tBodyGyro-mean()-X
fBodyGyro-mean()-Y .FFT of tBodyGyro-mean()-Y
fBodyGyro-mean()-Z .FFT of tBodyGyro-mean()-Z
fBodyGyro-std()-X .FFT of tBodyGyro-std()-X
fBodyGyro-std()-Y .FFT of tBodyGyro-std()-Y
fBodyGyro-std()-Z .FFT of tBodyGyro-std()-Z
fBodyAccMag-mean() .FFT of tBodyAccMag-mean()
fBodyAccMag-std() .FFT of tBodyAccMag-std()
fBodyBodyAccJerkMag-mean() .FFT of tBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std() .FFT of tBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean() .FFT of tBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std() .FFT of tBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean() .FFT of tBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() .FFT of tBodyBodyGyroJerkMag-std()