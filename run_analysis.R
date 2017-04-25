#This code was created in fulfillment of the requirements for the "Getting and
#Cleaning Data" Coursera course project.  It was created by Tuyet Hayes and was
#last revised on 4/19/2017.

#Task 1:  Merge the training and test data sets
#=================================================
if(!file.exists("./data")){dir.create("./data")}
train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
merged_data <- rbind(train,test)

#Task 4: Appropriately label the data set with descriptive variable names
#=================================================
#load and clean feature labels
features <- read.csv("./data/UCI HAR Dataset/features.txt", header = FALSE, sep = "")
names(features) <- c("featurenumber", "featurename")

#update variable names in merged data to reflect features
names(merged_data) <- features$featurename

#Task 2: Extract only measurements on the mean and standard deviation for each 
#measurement.
#=================================================
#subset data to include variables referencing mean or standard deviation only
mean <- grep("mean()",names(merged_data),fixed = TRUE)
std <- grep("std()",names(merged_data), fixed = TRUE)
meanstd <- merged_data[,c(mean,std)]

#load and merge subject data
subjecttrain <- read.csv("./data/UCI HAR Dataset/train/subject_train.txt", sep=" ", header = FALSE)
subjecttest <- read.csv("./data/UCI HAR Dataset/test/subject_test.txt", sep=" ", header = FALSE)
merged_subject <- rbind(subjecttrain,subjecttest)

#load and merge activity data
trainactivity <- read.csv("./data/UCI HAR Dataset/train/y_train.txt", sep=" ", header = FALSE)
testactivity <- read.csv("./data/UCI HAR Dataset/test/y_test.txt", sep=" ", header = FALSE)
merged_activity <- rbind(trainlabels,testlabels)

#add subject and activity data to merged data
meanstd <- cbind(merged_subject,merged_activity,meanstd)
names(meanstd)[1:2] <- c("subjectid","activity")

#Task 3: Use descriptive activity names to name the activities in the data set.
#================================================
#load and clean activity labels
activities <- read.csv("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")
names(activities) <- c("activitynumber","activityname")

#replace activity numbers with descriptive name
meanstd <- merge(meanstd,activities,by.x = "activity", by.y = "activitynumber")

#reorder columns, remove activity id
meanstd <- meanstd[,c(2,69,3:68)]

#Task 5: Create independent tidy data set with average of each variable for each activity 
#and each subject
#================================================
library(dplyr)
tidy <- meanstd %>% group_by(subjectid, activityname) %>% summarise_each(funs(mean(., na.rm=TRUE)))
write.table(tidy,file="subjectaverages.txt", row.names=FALSE)
column_names <- names(tidy)
write.csv(column_names,"column_names.csv")