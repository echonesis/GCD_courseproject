# run_analysis.R

# import library
library(reshape2);

# Clear Workspace
rm(list=ls());

# Step0: read.table for all existing data
data_test <- read.table("test/X_test.txt");
data_train <- read.table("train/X_train.txt")
subject_test <- read.table("test/subject_test.txt");
subject_train <- read.table("train/subject_train.txt");
feature <- read.table("features.txt");
label_test <- read.table("test/y_test.txt");
label_train <- read.table("train/y_train.txt");
activityTable <- read.table("activity_labels.txt")

# Step1: Merge the training and test sets to create target data set
combinedData <- rbind(data_test, data_train);
combinedSubject <- rbind(subject_test, subject_train);
combinedActivity <- act[rbind(as.matrix(label_test), as.matrix(label_train))];

# Step2: Extract Features with mean() and std()
idxList <- grepl("std\\(\\)", feature[, 2]) | grepl("mean\\(\\)", feature[,2]);
selectedData <- combinedData[, idxList]
selectedFeature <- c(as.vector(feature[idxList, 2]))

# Step3: Descriptive activity
act <- as.vector(activityTable[, 2]);
#
# Step4: Appropriately labels the data set with 
#        descriptive variable names
colnames(selectedData) <- selectedFeature
selectedData$subject <- combinedSubject[, 1]
selectedData$activity <- combinedActivity

# Step5: From the data set in step 4, creates a second, independent tidy data set.
dataMelt <- melt(selectedData, id=c("subject", "activity"), 
                 measure.vars = selectedFeature)
tidyData <- dcast(dataMelt, subject + activity ~ variable, mean)

# Output Data by write.table
write.table(tidyData, file="./output_tidyData.txt", row.names = FALSE)