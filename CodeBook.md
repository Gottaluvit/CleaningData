##Codebook for Tidy Dataset
Data from Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra 
	and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
	Multiclass Hardware-Friendly Support Vector Machine. International Workshop of 
	Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data in this dataset represent the mean values for measurements taken from the raw 
dataset described in the above reference. The mean of each of the variables described 
below was determined for each subject doing each of the six activities.  The resulting 
data table consists of 68 columns (66 columns representing mean or standard deviation 
from the original set, in addition to a "Subject" column, and a column describing the 
activity being done) and 180 rows (mean of the values for each of the 6 activities for 
all 30 volunteers). ULTIMATELY, THIS IS A DATA SET WHICH WAS MODIFIED TO CONSIST OF THE 
MEAN OF THE ORIGINAL MEAN VALUES AND THE MEAN OF THE STANDARD DEVIATION OF THE ORIGINAL 
MEANS, BROKEN DOWN BY ACTIVITY AND SUBJECT. This means that each subject has 6 values per 
column (a mean value for each activity).

The variables described in the columns of this set are:

-Subject
1 to 30 representing the subject identifier

-Activity
Walking / Walking Upstairs / Walking Downstairs / Sitting / Standing / Laying
Description of the activity being done at the time of measurement.  Transformed from 
numbered code in original data.

Each of the remaining variables are broken down into multiple factors and are as follows. 
They are further explained after the variable descriptions. 

TimeBodyAccelerometerMeanX
TimeBodyAccelerometerMeanY
TimeBodyAccelerometerMeanZ
TimeBodyAccelerometerStDevX
TimeBodyAccelerometerStDevY
TimeBodyAccelerometerStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) time domain 
signals from body acceleration measured by the accelerometer

TimeGravityAccelerometerMeanX
TimeGravityAccelerometerMeanY
TimeGravityAccelerometerMeanZ
TimeGravityAccelerometerStDevX
TimeGravityAccelerometerStDevY
TimeGravityAccelerometerStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) time domain 
signals from acceleration due to gravity measured by the accelerometer

TimeBodyAccelerometerJerkMeanX
TimeBodyAccelerometerJerkMeanY
TimeBodyAccelerometerJerkMeanZ
TimeBodyAccelerometerJerkStDevX
TimeBodyAccelerometerJerkStDevY
TimeBodyAccelerometerJerkStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) time domain 
signals for the jerk measurement derived from accelerometer measurements

TimeBodyGyroscopeMeanX
TimeBodyGyroscopeMeanY
TimeBodyGyroscopeMeanZ
TimeBodyGyroscopeStDevX
TimeBodyGyroscopeStDevY
TimeBodyGyroscopeStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) time domain 
signals from body acceleration measured by the gyroscope

TimeBodyGyroscopeJerkMeanX
TimeBodyGyroscopeJerkMeanY
TimeBodyGyroscopeJerkMeanZ
TimeBodyGyroscopeJerkStDevX
TimeBodyGyroscopeJerkStDevY
TimeBodyGyroscopeJerkStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) time domain 
signals for the jerk measurement derived from gyroscope measurements

TimeBodyAccelerometerMagnitudeMean
TimeBodyAccelerometerMagnitudeStDev
-These are the mean and standard deviation values for magnitude of time domain signals 
from accelerometer measurements of body acceleration

TimeGravityAccelerometerMagnitudeMean
TimeGravityAccelerometerMagnitudeStDev
-These are the mean and standard deviation values for magnitude of time domain signals 
from accelerometer measurements of gravity acceleration

TimeBodyAccelerometerJerkMagnitudeMean
TimeBodyAccelerometerJerkMagnitudeStDev
-These are the mean and standard deviation values for magnitude of time domain signals 
for the jerk measurement derived from accelerometer measurements

TimeBodyGyroscopeMagnitudeMean
TimeBodyGyroscopeMagnitudeStDev
-These are the mean and standard deviation values for magnitude of time domain signals 
from gyroscope measurements of body acceleration

TimeBodyGyroscopeJerkMagnitudeMean
TimeBodyGyroscopeJerkMagnitudeStDev
-These are the mean and standard deviation values for magnitude of time domain signals 
for the jerk measurement derived from accelerometer measurements

FreqBodyAccelerometerMeanX
FreqBodyAccelerometerMeanY
FreqBodyAccelerometerMeanZ
FreqBodyAccelerometerStDevX
FreqBodyAccelerometerStDevY
FreqBodyAccelerometerStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) frequency 
domain signals from body acceleration measured by the accelerometer

FreqGravityAccelerometerMeanX
FreqGravityAccelerometerMeanY
FreqGravityAccelerometerMeanZ
FreqGravityAccelerometerStDevX
FreqGravityAccelerometerStDevY
FreqGravityAccelerometerStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) frequency 
domain signals from acceleration due to gravity measured by the accelerometer

FreqBodyAccelerometerJerkMeanX
FreqBodyAccelerometerJerkMeanY
FreqBodyAccelerometerJerkMeanZ
FreqBodyAccelerometerJerkStDevX
FreqBodyAccelerometerJerkStDevY
FreqBodyAccelerometerJerkStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) frequency 
domain signals for the jerk measurement derived from accelerometer measurements

FreqBodyGyroscopeMeanX
FreqBodyGyroscopeMeanY
FreqBodyGyroscopeMeanZ
FreqBodyGyroscopeStDevX
FreqBodyGyroscopeStDevY
FreqBodyGyroscopeStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) frequency 
domain signals from body acceleration measured by the gyroscope

FreqBodyGyroscopeJerkMeanX
FreqBodyGyroscopeJerkMeanY
FreqBodyGyroscopeJerkMeanZ
FreqBodyGyroscopeJerkStDevX
FreqBodyGyroscopeJerkStDevY
FreqBodyGyroscopeJerkStDevZ
-These are the mean and standard deviation values for the 3-axial (X/Y/Z) frequency 
domain signals for the jerk measurement derived from gyroscope measurements

FreqBodyAccelerometerMagnitudeMean
FreqBodyAccelerometerMagnitudeStDev
-These are the mean and standard deviation values for magnitude of frequency domain 
signals from accelerometer measurements of body acceleration

FreqGravityAccelerometerMagnitudeMean
FreqGravityAccelerometerMagnitudeStDev
-These are the mean and standard deviation values for magnitude of frequency domain 
signals from accelerometer measurements of gravity acceleration

FreqBodyAccelerometerJerkMagnitudeMean
FreqBodyAccelerometerJerkMagnitudeStDev
-These are the mean and standard deviation values for magnitude of frequency domain 
signals for the jerk measurement derived from accelerometer measurements

FreqBodyGyroscopeMagnitudeMean
FreqBodyGyroscopeMagnitudeStDev
-These are the mean and standard deviation values for magnitude of frequency domain 
signals from gyroscope measurements of body acceleration

FreqBodyGyroscopeJerkMagnitudeMean
FreqBodyGyroscopeJerkMagnitudeStDev
-These are the mean and standard deviation values for magnitude of frequency domain 
signals for the jerk measurement derived from accelerometer measurements



The measurements each are derived from the raw signals tAcc-XYZ and tGyro-XYZ (where t 
indicates they are time samples at a fixed frequency) from the accelerometer and 
gyroscope of the smartphone.  They are represented by the following variable factors:

-Time/Frequency
Time represents time domain signals, while Frequency indicates values which have been 
transformed with the Fast Fourier Transform.

-Body/Gravity
Acceleration signals were broken down by body or gravity acceleration signals

-Accelerometer/Gyroscope
Indicates whether signal was determined by accelerometer or gyroscope

-Jerk
Jerk signal derived from body linear acceleration and angular velocity in time

-Magnitude
Magnitude of three-dimensional signals were calculated using the Euclidean norm

-Mean 
Indicates that original data in this variable column was the mean value for the 
indicated measurement

-StDev
Standard deviation for the associated mean value

-X/Y/Z
Each axis from the 3-axial measurements 


