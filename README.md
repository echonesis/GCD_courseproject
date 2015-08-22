## README ##

This README file is generated for describing the how the main R-script, run_analysis.R, works.

### Usage ###
1. Get the Samsung data as the provided ZIP file for this assignment and unzip it to the working directory.  In that, you should check the essential files by getting the command list as follows:

<pre><code>activity_labels.txt
features.txt
features_info.txt
README.txt
test/
   test/subject_test.txt
   test/X_test.txt
   test/y_test.txt
   test/Inertial Signals/
train/
   train/subject_train.txt
   train/X_train.txt
   train/y_train.txt
   train/Inertial Signals/
</code></pre>

2. Copy the run_analysis.R to the working directory, which would be at the same level as features.txt.

3. Run the R-script, which is run_analysis.R, under R environment.

4. The output file, output_tidyData.txt, would be located at the same directory as run_analysis.R.


### How R-script Works ###

1. In this run_analysis.R, `reshape2` library is included.

2. The overall script could be splitted into 7 functional steps:

	- Step 0: Read existing data from current working directory.  These data include measurements, subjects, features, labels and activities.
	- Step 1: Merge the training and test sets to create target data set.  In this step, we can assume the later usable contents are data, subjects and activities.
	- Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.  As the hints from **features_info.txt**, I try to use the `grepl` with regular expression formatting to get only the `mean()` and `std()` for mean and standard deviation.
	- Step 3: Uses descriptive activity names to name the activities in the data set.  For this purpose, get only the reciprocal char values for the activity mapping from **activity_labels.txt**.
	- Step 4: Appropriately labels the data set with descriptive variable names.  Related measured feature names would be selected to be set in column names, which would be `colnames(...)`.
	- Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  Use `melt` to get separated variables, subject and activity, and other measure variables.  Then, use `dcast` to make the tidy data  of mean values with respect to each variable for each activity and each subject
	- Output Data Step: use `write.table()` to generate default output file, **output_tidyData.txt** to current working directory. 
