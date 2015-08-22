## Project Description
Course Project for Getting and Cleaning Data

##Study design and data processing

###Collection of the raw data
Data collected from UCI Machine Learning Repository for the Human Activity Recognition Using Smartphones Data Set.  For more information, please contact [UCI Smartphone Activity Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "UCI Smartphone Activity Data")

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download the data from Coursera Course Project or [UCI Smartphone Activity Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "UCI Smartphone Activity Data")
2. Unzip the target file.
3. Run run_analysis.R under R environment.
4. Get the tidy data, which is named as "output_tidyData.txt", in working directory.

###Cleaning of the data
1. Read essential data sets.
2. Merge data.
3. Mapping with activity table.
4. Define measured names and insert them into the column names.
5. Reshape the data into more tidy format.

For high-level description of what the cleaning script does, please refer to [README Document](./README.md)

##Description of the variables in the tidy formatted file (output_tidyData.txt)
For overall tidy data, we could observe the stats:
- Dimensions: 180 observations of 68 variables
- Variable types: 3 
	
- subject: This variable would reflect target subject who performed the activityIts ranging from 1 to 30. 
- activity: Links the class labels with their activity name, whose class is character.
- measurements: total 66 types of measurements, which are summarized as follows.  For all the derived variables, t means time-series detected values, which could be separated into X-, Y- and Z-axis.  Besides, f means frequency-series of the detected data, which is the result of doing FFT on the time-series data.  Functions of `mean()` and `std()` mean the arithmetic mean and standard deviation.

### BodyAcc
Body Acceleration

##### Derived Variables
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z

### GravityAcc
Gravity Acceleration

##### Derived Variables
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z

### BodyAccJerk
Body Acceleration Jerk, which means the Body Acceleration Deviation

##### Derived Variables
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z

### BodyGyro
Body Gyroscope Value

##### Derived Variables
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z

### BodyGyroJerk
Body Gyroscope Jerk

##### Derived Variables
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- fBodyGyroJerk-mean()-X
- fBodyGyroJerk-mean()-Y
- fBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- fBodyGyroJerk-std()-X
- fBodyGyroJerk-std()-Y
- fBodyGyroJerk-std()-Z

### BodyAccMag
Body Acceleration Magnitude

##### Derived Variables
- tBodyAccMag-mean()
- fBodyAccMag-mean()
- tBodyAccMag-std()
- fBodyAccMag-std()

### GravityAccMag
Gravity Acceleration Magnitude

##### Derived Variables
- tGravityAccMag-mean()
- tGravityAccMag-std()

### BodyAccJerkMag
Body Acceleration Jerk Magnitude

##### Derived Variables
- tBodyAccJerkMag-mean()
- fBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- fBodyAccJerkMag-std()

### BodyGyroMag
Body Gyroscope Magnitude

##### Derived Variables
- tBodyGyroMag-mean()
- fBodyGyroMag-mean()
- tBodyGyroMag-std()
- fBodyGyroMag-std()

### BodyGyroJerkMag
Body Gyroscope Jerk Magnitude

##### Derived Variables
- tBodyGyroJerkMag-mean()
- fBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyGyroJerkMag-std()