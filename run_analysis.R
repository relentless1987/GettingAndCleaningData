#You should create one R script called run_analysis.R that does the following. 
#  1. Merges the training and the test sets to create one data set.
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#  3. Uses descriptive activity names to name the activities in the data set
#  4. Appropriately labels the data set with descriptive variable names. 
#  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#  Clean up environment
rm(list=ls())


#  1. Merges the training and the test sets to create one data set.
#  
trainData <- read.table("X_train.txt")
trainLabel <- read.table("y_train.txt")
trainSubject <- read.table("subject_train.txt")
testData <- read.table("X_test.txt")
testLabel <- read.table("y_test.txt") 
testSubject <- read.table("subject_test.txt")
joinData <- rbind(trainData, testData)
joinLabel <- rbind(trainLabel, testLabel)
joinSubject <- rbind(trainSubject, testSubject)


################################################
#  2. Extracts only the measurements on the 
#     mean and standard deviation for each measurement. 
features <- read.table("features.txt")

meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])

joinData <- joinData[, meanStdIndices]

names(joinData) <- gsub("\\(\\)", "", features[meanStdIndices, 2]) # remove "()"
names(joinData) <- gsub("mean", "Mean", names(joinData)) # capitalize M
names(joinData) <- gsub("std", "Std", names(joinData)) # capitalize S
names(joinData) <- gsub("-", "", names(joinData)) # remove "-" in column names 


################################################
# 3.  Uses descriptive activity names to name the activities in 
#     the data set
activity <- read.table("activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))
activityLabel <- activity[joinLabel[, 1], 2]
joinLabel[, 1] <- activityLabel
names(joinLabel) <- "activity"


################################################
# 4. Appropriately labels the data set with descriptive activity names. 
names(joinSubject) <- "subject"
cleanedData <- cbind(joinSubject, joinLabel, joinData)

write.table(cleanedData, "mergeddata.txt") # write out the 1st dataset


################################################
# 5. Creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject. 
subjectLen <- length(table(joinSubject)) # 30
activityLen <- dim(activity)[1] # 6
colLen <- dim(cleanedData)[2]
result <- matrix(NA, nrow=subjectLen*activityLen, ncol=colLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(cleanedData)
row <- 1
for(i in 1:subjectLen) {
   for(j in 1:activityLen) {
      result[row, 1] <- sort(unique(joinSubject)[, 1])[i]
      result[row, 2] <- activity[j, 2]
      bool1 <- i == cleanedData$subject
      bool2 <- activity[j, 2] == cleanedData$activity
      result[row, 3:colLen] <- colMeans(cleanedData[bool1&bool2, 3:colLen])
      row <- row + 1
   }
}

# write out the 2nd dataset
write.table(result, "tidy_data_with_means.txt", row.name=FALSE) 
