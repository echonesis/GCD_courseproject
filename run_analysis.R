# run_analysis.R
# Main R-script for doing Data Manipulation

# Step 1
subject_test <- read.table("test/subject_test.txt");
subject_train <- read.table("train/subject_train.txt");
feature <- read.table("features.txt");
label_test <- read.table("test/y_test.txt");
label_train <- read.table("train/y_train.txt");
activityTable <- read.table("activity_labels.txt")
act <- activityTable[, 2];

data_test <- read.table("test/X_test.txt");
names(data_test) <- feature;
selectedDataTest <- data_test[, grepl("std\\(\\)", names(data_test)) | grepl("mean\\(\\)", names(data_test))];
selectedDataTest$dActivity <- act[label_test[, 1]];

data_train <- read.table("train/X_train.txt")
names(data_train) <- feature;
selectedDataTrain <- data_train[, grepl("std\\(\\)", names(data_train)) | grepl("mean\\(\\)", names(data_train))];
selectedDataTrain$dActivity <- act[label_train[, 1]];

mergedData <- merge(selectedDataTrain, selectedDataTest, all=TRUE);