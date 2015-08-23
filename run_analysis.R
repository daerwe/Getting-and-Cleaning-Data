# Step1
features <- read.table('./features.txt',stringsAsFactors = FALSE)
xTest <- read.table('./test/X_test.txt',col.names = features$V2)
yTest <- read.table('./test/y_test.txt',col.names = 'activity')
subjectTest <- read.table('./test/subject_test.txt',col.names = 'subject_id')
xTrain <- read.table('./train/X_train.txt',col.names = features$V2)
yTrain <- read.table('./train/y_train.txt',col.names = 'activity')
subjectTrain <- read.table('./train/subject_train.txt',col.names = 'subject_id')
activityLabels <- read.table('./activity_labels.txt')
dataTest <- cbind(subjectTest,yTest,xTest)
dataTrain <- cbind(subjectTrain,yTrain,xTrain)
dataFull <- rbind(dataTest,dataTrain)

# Step 2
subsetIndices <- grep('std|mean',colnames(dataFull))
dataSubset <- dataFull[,c(1,2,subsetIndices)]

# Step 3
v <- as.character(activityLabels[,2])
dataSubset$activity <- v[dataSubset$activity]

# Step 4
# Current names are OK; renaming would be tedious and unecessary.

# Step 5
library(dplyr)
subjectActivityGroups <- group_by(dataSubset,subject_id,activity)
finalTable <- summarise_each(subjectActivityGroups,funs(mean))

# Write tidy data to disk
write.table(finalTable, file = "tidydata.txt",row.name = FALSE)


