##Step 1: Store location of data in URL
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

##Step 2: Check to see if local file exists called data, if not, create it and download the file from the URL
if(!file.exists("data"){
dir.create("data")
}
download.file(URL, destfile="./data/galaxys.zip")

##Step 3: Record the date the data was downloaded.
dateDownloaded<-date()

##Step 4: Unzip file to new folder testtrain in data folder
unzip("./data/galaxys.zip", exdir="./data/testtrain")

##Step 5: Load train and test data sets and column names
library(data.table)
test<-fread("./data/testtrain/UCI HAR Dataset/test/X_test.txt")
train<-fread("./data/testtrain/UCI HAR Dataset/train/X_train.txt")
trainlabel<-fread("./data/testtrain/UCI HAR Dataset/train/y_train.txt")
testlabel<-fread("./data/testtrain/UCI HAR Dataset/test/y_test.txt")
trainsubj<-fread("./data/testtrain/UCI HAR Dataset/train/subject_train.txt")
testsubj<-fread("./data/testtrain/UCI HAR Dataset/test/subject_test.txt")
names<-fread("./data/testtrain/UCI HAR Dataset/features.txt")

##Step 6: Extract column names and assign to test and train data sets
colnames<-names$V2
names(test)<-c(colnames)
names(train)<-c(colnames)
names(testlabel)<-c("activity")
names(trainlabel)<-c("activity")
names(testsubj)<-c("subject")
names(trainsubj)<-c("subject")

##Step 7: Combine subject,activity, and results data for test and train sets
testcomb<-cbind(testsubj,testlabel,test)
traincomb<-cbind(trainsubj,trainlabel,train)


##Step 8: Combine train and test data sets into one and store as combined set
combinedset<-rbind(traincomb,testcomb)

##Step 9: Column names from combinedset and which include phrase mean() and std()
colnames2<-names(combinedset)
names_mean<-grepl("mean[()]", colnames2)
names_std<-grepl("std[()]", colnames2) 
names_all<-names_mean+names_std


##Step 10: Take only those column names where value is 1 (true) and store as column names
names_list<-names[names_all==1]

##Step 11: Calculate which columns to keep from combinedset
colstochoose<-names_list$V1

##Step 12: Take first two columns and only those columns from combinedset that are in the
##colstochoose list
library(dplyr)
combinededit<-select(combinedset,c(1,2,colstochoose))

##Step13: Load activity labels
activitynames<-fread("./data/testtrain/UCI HAR Dataset/activity_labels.txt")

##Step14: Go through activity column in combinededit and replace numeric values with activity name
	from <- as.vector(activitynames$V1)
	to <- as.vector(activitynames$V2)


	gsub2 <- function(from, to, x, ...) {
		for(i in 1:length(from))
		x <- gsub(from[i], to[i], x, ...)
		x
									}
combinededit$activity<-gsub2(from,to,combinededit$activity)

##Step 15: Replace abbreviations in column names with full text.  Acc to Acceleration, Gyro to Gryoscope, and Mag to Magnitude

names(combinededit) <- gsub("Acc", "Acceleration", names(combinededit))
names(combinededit) <- gsub("Gyro", "Gyroscope", names(combinededit))
names(combinededit) <- gsub("Mag", "Magnitude", names(combinededit))

##Step 16: Remove double Body from last few variable names (per review of features_info file)
names(combinededit) <- gsub("BodyBody", "Body", names(combinededit))

##Step 17: Change mean() and std() to Mean and Standard Deviation
names(combinededit) <- gsub("mean()", "Mean", names(combinededit))
names(combinededit) <- gsub("std()", "Standard Deviation", names(combinededit))

##Step 18: Change t and f to time and frequency
names(combinededit) <- gsub("tBody", "TimeBody", names(combinededit))
names(combinededit) <- gsub("fBody", "FrequencyBody", names(combinededit))
names(combinededit) <- gsub("tGravity", "TimeGravity", names(combinededit))

##Step 19: Create new tidy data set where data is grouped by subject and activity
tidy<-combinededit%>%group_by(subject,activity)%>%summarize_each(funs(mean))

##Step 20: Write the final result to a new file galaxys_tidy.txt
write.table(tidy,file="./data/galaxys_tidy.txt",row.name=FALSE)


