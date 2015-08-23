The dataset contains information obtained from experiments where a group of volunteers aged 19-48 performed six activities while wearing a smartphone, which sampled various measurements.   The sampled measurements were normalized to lie between -1 and 1 and averaged over subject/activity.   There were 81 total fields that were measurements of means or standard deviations (prior to averaging).  

The first two are the fields over which the measurements were averaged:

subject_id: The identification number of the subject, ranging from 1 to 30.
activity: The activity performed by the subject.  Either WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING.  

The next 79 are averaged measurements.  A few notes on these attributes, so as to not explain them all individually:

1. Each starts with "t" or "f" depending upon whether the measurement is in the time or frequency domain, respectively. 
2. Each contains "mean()," "std()," or "meanFreq" depending on if it is a mean, standard deviation, or weighted mean of frequencies, respectively. 
3. Most end with "X," "Y," or "Z" depending upon the axis the measurement was taken along.  
4. Some contain "Mag", meaning the value is the magnitude of a measurement, ignoring direction.  

Stripping away the above information, there are only five primary measurements:

1. BodyAcc: The linear acceleration due to body movement.
2. GravityAcc: The acceleration due to gravity.
3. BodyAccJerk: The derivative with respect to time of BodyAcc.  
4. BodyGyro: The body angular velocity.
5. BodyGyroJerk: The derivative with respect to time of BodyGyro.

There is also BodyBodyAccJerk, but this is the same as BodyAccJerk.

The original data from which this is derived can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).




> Written with [StackEdit](https://stackedit.io/).