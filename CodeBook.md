Code Book

Notes from the author of this assignment:

Explanation of variables in final data set -

Subject
- the number of the subject for which the observation was made
- subject numbers range from 1 to 30

Activity
- the name of the activity the subject performed when the measurement was taken
- there were six activities: walking, walking upstairs, walking downstairs, sitting, standing and laying
- this data was originally recorded by code numbers 1-6 in the Samsung files, I replaced the codes with the name of the activity according to the key provided in the data files


The variables listed below were derived from the original data in the data files by subsetting the original data by both subject and activity and then using the mean() function in R to find the average value across all observations for that subject/activity pair.

The providers of the original data note that all of the original features in the data files were normalized and bounded within [-1,1]. They did not explicitly provide units for their original data.

average of tBodyAcc-mean()-X
average of tBodyAcc-mean()-Y
average of tBodyAcc-mean()-Z
average of tBodyAcc-std()-X
average of tBodyAcc-std()-Y
average of tBodyAcc-std()-Z
average of tGravityAcc-mean()-X
average of tGravityAcc-mean()-Y
average of tGravityAcc-mean()-Z
average of tGravityAcc-std()-X
average of tGravityAcc-std()-Y
average of tGravityAcc-std()-Z
average of tBodyAccJerk-mean()-X
average of tBodyAccJerk-mean()-Y
average of tBodyAccJerk-mean()-Z
average of tBodyAccJerk-std()-X
average of tBodyAccJerk-std()-Y
average of tBodyAccJerk-std()-Z
average of tBodyGyro-mean()-X
average of tBodyGyro-mean()-Y
average of tBodyGyro-mean()-Z
average of tBodyGyro-std()-X
average of tBodyGyro-std()-Y
average of tBodyGyro-std()-Z
average of tBodyGyroJerk-mean()-X
average of tBodyGyroJerk-mean()-Y
average of tBodyGyroJerk-mean()-Z
average of tBodyGyroJerk-std()-X
average of tBodyGyroJerk-std()-Y
average of tBodyGyroJerk-std()-Z
average of tBodyAccMag-mean()
average of tBodyAccMag-std()
average of tGravityAccMag-mean()
average of tGravityAccMag-std()
average of tBodyAccJerkMag-mean()
average of tBodyAccJerkMag-std()
average of tBodyGyroMag-mean()
average of tBodyGyroMag-std()
average of tBodyGyroJerkMag-mean()
average of tBodyGyroJerkMag-std()
average of fBodyAcc-mean()-X
average of fBodyAcc-mean()-Y
average of fBodyAcc-mean()-Z
average of fBodyAcc-std()-X
average of fBodyAcc-std()-Y
average of fBodyAcc-std()-Z
average of fBodyAcc-meanFreq()-X
average of fBodyAcc-meanFreq()-Y
average of fBodyAcc-meanFreq()-Z
average of fBodyAccJerk-mean()-X
average of fBodyAccJerk-mean()-Y
average of fBodyAccJerk-mean()-Z
average of fBodyAccJerk-std()-X
average of fBodyAccJerk-std()-Y
average of fBodyAccJerk-std()-Z
average of fBodyAccJerk-meanFreq()-X
average of fBodyAccJerk-meanFreq()-Y
average of fBodyAccJerk-meanFreq()-Z
average of fBodyGyro-mean()-X
average of fBodyGyro-mean()-Y
average of fBodyGyro-mean()-Z
average of fBodyGyro-std()-X
average of fBodyGyro-std()-Y
average of fBodyGyro-std()-Z
average of fBodyGyro-meanFreq()-X
average of fBodyGyro-meanFreq()-Y
average of fBodyGyro-meanFreq()-Z
average of fBodyAccMag-mean()
average of fBodyAccMag-std()
average of fBodyAccMag-meanFreq()
average of fBodyBodyAccJerkMag-mean()
average of fBodyBodyAccJerkMag-std()
average of fBodyBodyAccJerkMag-meanFreq()
average of fBodyBodyGyroMag-mean()
average of fBodyBodyGyroMag-std()
average of fBodyBodyGyroMag-meanFreq()
average of fBodyBodyGyroJerkMag-mean()
average of fBodyBodyGyroJerkMag-std()
average of fBodyBodyGyroJerkMag-meanFreq()


Notes from the providers of the orginial data files:

"Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012."
