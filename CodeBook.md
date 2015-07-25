# Code book for the tidy data set produced by `run_analysis.R`

This code book documents the variables in the tidy data set (`tidy_data_2.txt`)
produced by `run_analysis.R`. The data are averages and not raw measurements.
For each variable, a description, its unit and its range are provided. There are
additional notes and references at the end of this document.

The variable names have been named according to the original data set
[[1]](#ref1) with just the addition of an `avg-` prefix. This is done to ensure
a 1-to-1 correspondence with the analysis of other users of the data set,
assuming of course that they also keep the original variable names.

### Abbreviations

- Acc: accelerometer
- avg: average
- Gyro: gyroscope
- Mag: magnitude
- std: standard deviation

### Prefixes

- f: frequency
- t: time

## Table of variables

The ranges of the original variables except `subject` and `activity` have been
normalized to [-1,&nbsp;1] and thus by dimensional analysis the numeric
variables in this table have no unit. The `subject` and `activity` variables
also have no unit because they are nominal variables.

|   | Name | Description | Unit | Range |
| -:|:---- |:----------- |:----:|:-----:|
| 1 | subject | The id of the subject doing the activity. | No unit | 1 - 30 |
| 2 | activity | The activity itself. | No unit | LAYING&nbsp;\| SITTING&nbsp;\| STANDING&nbsp;\| WALKING&nbsp;\| WALKING_DOWNSTAIRS&nbsp;\| WALKING_UPSTAIRS&nbsp;|
| 3 | avg-tBodyAcc-mean()-X | Average of the means of body acceleration in the X-axis (time domain). | No unit | [-1, 1] |
| 4 | avg-tBodyAcc-mean()-Y | Average of the means of body acceleration in the Y-axis (time domain). | No unit | [-1, 1] |
| 5 | avg-tBodyAcc-mean()-Z | Average of the means of body acceleration in the Z-axis (time domain). | No unit | [-1, 1] |
| 6 | avg-tBodyAcc-std()-X | Average of the standard deviations of body acceleration in the X-axis (time domain). | No unit | [-1, 1] |
| 7 | avg-tBodyAcc-std()-Y | Average of the standard deviations of body acceleration in the Y-axis (time domain). | No unit | [-1, 1] |
| 8 | avg-tBodyAcc-std()-Z | Average of the standard deviations of body acceleration in the Z-axis (time domain). | No unit | [-1, 1] |
| 9 | avg-tGravityAcc-mean()-X | Average of the means of gravitational acceleration in the X-axis (time domain). | No unit | [-1, 1] |
| 10 | avg-tGravityAcc-mean()-Y | Average of the means of gravitational acceleration in the Y-axis (time domain). | No unit | [-1, 1] |
| 11 | avg-tGravityAcc-mean()-Z | Average of the means of gravitational acceleration in the Z-axis (time domain). | No unit | [-1, 1] |
| 12 | avg-tGravityAcc-std()-X | Average of the standard deviations of gravitational acceleration in the X-axis (time domain). | No unit | [-1, 1] |
| 13 | avg-tGravityAcc-std()-Y | Average of the standard deviations of gravitational acceleration in the Y-axis (time domain). | No unit | [-1, 1] |
| 14 | avg-tGravityAcc-std()-Z | Average of the standard deviations of gravitational acceleration in the Z-axis (time domain). | No unit | [-1, 1] |
| 15 | avg-tBodyAccJerk-mean()-X | Average of the means of body jerk in the X-axis (time domain). | No unit | [-1, 1] |
| 16 | avg-tBodyAccJerk-mean()-Y | Average of the means of body jerk in the Y-axis (time domain). | No unit | [-1, 1] |
| 17 | avg-tBodyAccJerk-mean()-Z | Average of the means of body jerk in the Z-axis (time domain). | No unit | [-1, 1] |
| 18 | avg-tBodyAccJerk-std()-X | Average of the standard deviations of body jerk in the X-axis (time domain). | No unit | [-1, 1] |
| 19 | avg-tBodyAccJerk-std()-Y | Average of the standard deviations of body jerk in the Y-axis (time domain). | No unit | [-1, 1] |
| 20 | avg-tBodyAccJerk-std()-Z | Average of the standard deviations of body jerk in the Z-axis (time domain). | No unit | [-1, 1] |
| 21 | avg-tBodyGyro-mean()-X | Average of the means of body angular velocity in the X-axis (time domain). | No unit | [-1, 1] |
| 22 | avg-tBodyGyro-mean()-Y | Average of the means of body angular velocity in the Y-axis (time domain). | No unit | [-1, 1] |
| 23 | avg-tBodyGyro-mean()-Z | Average of the means of body angular velocity in the Z-axis (time domain). | No unit | [-1, 1] |
| 24 | avg-tBodyGyro-std()-X | Average of the standard deviations of body angular velocity in the X-axis (time domain). | No unit | [-1, 1] |
| 25 | avg-tBodyGyro-std()-Y | Average of the standard deviations of body angular velocity in the Y-axis (time domain). | No unit | [-1, 1] |
| 26 | avg-tBodyGyro-std()-Z | Average of the standard deviations of body angular velocity in the Z-axis (time domain). | No unit | [-1, 1] |
| 27 | avg-tBodyGyroJerk-mean()-X | Average of the means of body angular jerk in the X-axis (time domain). | No unit | [-1, 1] |
| 28 | avg-tBodyGyroJerk-mean()-Y | Average of the means of body angular jerk in the Y-axis (time domain). | No unit | [-1, 1] |
| 29 | avg-tBodyGyroJerk-mean()-Z | Average of the means of body angular jerk in the Z-axis (time domain). | No unit | [-1, 1] |
| 30 | avg-tBodyGyroJerk-std()-X | Average of the standard deviations of body angular jerk in the X-axis (time domain). | No unit | [-1, 1] |
| 31 | avg-tBodyGyroJerk-std()-Y | Average of the standard deviations of body angular jerk in the Y-axis (time domain). | No unit | [-1, 1] |
| 32 | avg-tBodyGyroJerk-std()-Z | Average of the standard deviations of body angular jerk in the Z-axis (time domain). | No unit | [-1, 1] |
| 33 | avg-tBodyAccMag-mean() | Average of the means of body acceleration magnitudes (time domain). | No unit | [-1, 1] |
| 34 | avg-tBodyAccMag-std() | Average of the standard deviations of body acceleration magnitudes (time domain). | No unit | [-1, 1] |
| 35 | avg-tGravityAccMag-mean() | Average of the means of gravitational acceleration magnitudes (time domain). | No unit | [-1, 1] |
| 36 | avg-tGravityAccMag-std() | Average of the standard deviations of gravitational acceleration magnitudes (time domain). | No unit | [-1, 1] |
| 37 | avg-tBodyAccJerkMag-mean() | Average of the means of body jerk magnitudes (time domain). | No unit | [-1, 1] |
| 38 | avg-tBodyAccJerkMag-std() | Average of the standard deviations of body jerk magnitudes (time domain). | No unit | [-1, 1] |
| 39 | avg-tBodyGyroMag-mean() | Average of the means of body angular velocity magnitudes (time domain). | No unit | [-1, 1] |
| 40 | avg-tBodyGyroMag-std() | Average of the standard deviations of body angular velocity magnitudes (time domain). | No unit | [-1, 1] |
| 41 | avg-tBodyGyroJerkMag-mean() | Average of the means of body angular jerk magnitudes (time domain). | No unit | [-1, 1] |
| 42 | avg-tBodyGyroJerkMag-std() | Average of the standard deviations of body angular jerk magnitudes (time domain). | No unit | [-1, 1] |
| 43 | avg-fBodyAcc-mean()-X | Average of the means of body acceleration in the X-axis (frequency domain). | No unit | [-1, 1] |
| 44 | avg-fBodyAcc-mean()-Y | Average of the means of body acceleration in the Y-axis (frequency domain). | No unit | [-1, 1] |
| 45 | avg-fBodyAcc-mean()-Z | Average of the means of body acceleration in the Z-axis (frequency domain). | No unit | [-1, 1] |
| 46 | avg-fBodyAcc-std()-X | Average of the standard deviations of body acceleration in the X-axis (frequency domain). | No unit | [-1, 1] |
| 47 | avg-fBodyAcc-std()-Y | Average of the standard deviations of body acceleration in the Y-axis (frequency domain). | No unit | [-1, 1] |
| 48 | avg-fBodyAcc-std()-Z | Average of the standard deviations of body acceleration in the Z-axis (frequency domain). | No unit | [-1, 1] |
| 49 | avg-fBodyAccJerk-mean()-X | Average of the means of body jerk in the X-axis (frequency domain). | No unit | [-1, 1] |
| 50 | avg-fBodyAccJerk-mean()-Y | Average of the means of body jerk in the Y-axis (frequency domain). | No unit | [-1, 1] |
| 51 | avg-fBodyAccJerk-mean()-Z | Average of the means of body jerk in the Z-axis (frequency domain). | No unit | [-1, 1] |
| 52 | avg-fBodyAccJerk-std()-X | Average of the standard deviations of body jerk in the X-axis (frequency domain). | No unit | [-1, 1] |
| 53 | avg-fBodyAccJerk-std()-Y | Average of the standard deviations of body jerk in the Y-axis (frequency domain). | No unit | [-1, 1] |
| 54 | avg-fBodyAccJerk-std()-Z | Average of the standard deviations of body jerk in the Z-axis (frequency domain). | No unit | [-1, 1] |
| 55 | avg-fBodyGyro-mean()-X | Average of the means of body angular velocity in the X-axis (frequency domain). | No unit | [-1, 1] |
| 56 | avg-fBodyGyro-mean()-Y | Average of the means of body angular velocity in the Y-axis (frequency domain). | No unit | [-1, 1] |
| 57 | avg-fBodyGyro-mean()-Z | Average of the means of body angular velocity in the Z-axis (frequency domain). | No unit | [-1, 1] |
| 58 | avg-fBodyGyro-std()-X | Average of the standard deviations of body angular velocity in the X-axis (frequency domain). | No unit | [-1, 1] |
| 59 | avg-fBodyGyro-std()-Y | Average of the standard deviations of body angular velocity in the Y-axis (frequency domain). | No unit | [-1, 1] |
| 60 | avg-fBodyGyro-std()-Z | Average of the standard deviations of body angular velocity in the Z-axis (frequency domain). | No unit | [-1, 1] |
| 61 | avg-fBodyAccMag-mean() | Average of the means of body acceleration magnitudes (frequency domain). | No unit | [-1, 1] |
| 62 | avg-fBodyAccMag-std() | Average of the standard deviations of body acceleration magnitudes (frequency domain). | No unit | [-1, 1] |
| 63 | avg-fBodyBodyAccJerkMag-mean() | Average of the means of body jerk magnitudes (frequency domain). | No unit | [-1, 1] |
| 64 | avg-fBodyBodyAccJerkMag-std() | Average of the standard deviations of body jerk magnitudes (frequency domain). | No unit | [-1, 1] |
| 65 | avg-fBodyBodyGyroMag-mean() | Average of the means of body angular velocity magnitudes (frequency domain). | No unit | [-1, 1] |
| 66 | avg-fBodyBodyGyroMag-std() | Average of the standard deviations of body angular velocity magnitudes (frequency domain). | No unit | [-1, 1] |
| 67 | avg-fBodyBodyGyroJerkMag-mean() | Average of the means of body angular jerk magnitudes (frequency domain). | No unit | [-1, 1] |
| 68 | avg-fBodyBodyGyroJerkMag-std() | Average of the standard deviations of body angular jerk magnitudes (frequency domain). | No unit | [-1, 1] |

## Notes

- There are variable names with `BodyBody` in them. These appear to be typos,
  carried over from the original data set.
- Jerk is the rate of change of acceleration, or the derivative of acceleration
  with respect to time (from Wikipedia [[2]](#ref2)).
- The derivative of angular velocity with respect to time is angular
  acceleration and not angular jerk. Thus, it appears that any occurance of
  `GyroJerk` in the variable names above should be replaced with perhaps
  `GyroAccln`. This claim has support from the data set paper itself (see Table
  2 of [[1]](#ref1)) but it's best to have confirmation from the data set
  authors.

## References

[1] <a name="ref1"></a> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier
Parra and Jorge L. Reyes-Ortiz (2013). "A Public Domain Dataset for Human
Activity Recognition Using Smartphones". 21th European Symposium on Artificial
Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013.
Bruges, Belgium.

[2] <a name="ref2"></a> Wikipedia (2015). "Jerk (physics)".
[https://en.wikipedia.org/wiki/Jerk\_(physics)](https://en.wikipedia.org/wiki/Jerk_(physics))
Accessed on 24 July 2015.
