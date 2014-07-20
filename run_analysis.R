#Read in data
x_train<-read.table("UCI HAR Dataset/train/X_train.txt", sep = "", header = F)
x_test<-read.table("UCI HAR Dataset/test/X_test.txt", sep = "", header = F)
y_test<-read.table("UCI HAR Dataset/test/Y_test.txt", sep = "", header = F)
y_train<-read.table("UCI HAR Dataset/train/Y_train.txt", sep = "", header = F)
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt", sep = "", header = F)
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt", sep = "", header = F)
features<-read.csv("UCI HAR Dataset/features.txt", sep = "", header = F)
features<-as.character(features$V2)

#Create unified "test" and "train" data sets then join together
test<-cbind(subject_test, y_test, x_test)
train<-cbind(subject_train, y_train, x_train)
complete<-rbind(test, train)
#Label variables of dataset using labels from features 
colnames(complete)<-c("Subject", "Activity", features)
#Replace the Activity codes with Descriptive activity names
complete$Activity[which(complete$Activity=="1")]<-"Walking"
complete$Activity[which(complete$Activity=="2")]<-"Walking Upstairs"
complete$Activity[which(complete$Activity=="3")]<-"Walking Downstairs"
complete$Activity[which(complete$Activity=="4")]<-"Sitting"
complete$Activity[which(complete$Activity=="5")]<-"Standing"
complete$Activity[which(complete$Activity=="6")]<-"Laying"
#This makes complete data set now we have to subset it to only have mean 
#and std variables

pattern<-c("arC", "entropy", "iqr", "mad", "max", "min", "sma", "energy", 
           "angle", "bands", "corr", "meanFreq", "kurtosis", "skewness")
com_names<-names(complete)
subnames<-grep(paste(pattern, collapse = "|"), com_names, value = TRUE, 
               invert = TRUE)
tidy<-subset(complete, select = subnames)
#creates a data table with only the columns containing "mean" or "std" 
#(in addition to Subject and Activity)

#Relabel columns removing special Characters and making a bit less confusing
subnames<-gsub("tBodyAcc", "TimeBodyAccelerometer", subnames)
subnames<-gsub("fBodyAcc", "FreqBodyAccelerometer", subnames)
subnames<-gsub("tGravityAcc", "TimeGravityAccelerometer", subnames)
subnames<-gsub("fGravityAcc", "FreqGravityAccelerometer", subnames)
subnames<-gsub("tBodyGyro", "TimeBodyGyroscope", subnames)
subnames<-gsub("fBodyGyro", "FreqBodyGyroscope", subnames)
subnames<-gsub("tGravityGyro", "TimeGravityGyroscope", subnames)
subnames<-gsub("fGravityGyro", "FreqGravityGyroscope", subnames)
subnames<-gsub("fBodyAcc", "FreqBodyAccelerometer", subnames)
subnames<-gsub("Mag", "Magnitude", subnames)
subnames<-gsub("mean", "Mean", subnames)
subnames<-gsub("std", "StDev", subnames)
subnames<-gsub("BodyBody", "Body", subnames)
subnames<-gsub(paste(c("-", "\\()"), collapse = "|"), "", subnames)
colnames(tidy)<-subnames
#This gives correctly labeled dataset
#Now generate dataset that has the mean by subject and activity

library(plyr)
final<-ddply(tidy, .(Subject, Activity), numcolwise(mean))
write.table(final, file = "final.txt", row.names = FALSE)
