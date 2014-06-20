##Read in files to tables
test_file=read.table('./UCI HAR Dataset/test/X_test.txt')
train_file=read.table('./UCI HAR Dataset/train/X_train.txt')

##conver to data frame
test_data<-data.frame(test_file)
train_data<-data.frame(train_file)

##Get activity type (1-5) from different file(s)
activity_test<-read.table('./UCI HAR Dataset/test/y_test.txt')
activities_test=activity_test[,1]
activity_train<-read.table('./UCI HAR Dataset/train/y_train.txt')
activities_train=activity_train[,1]

## Get subjects (1-30) from different file(s)
subject_test<-read.table('./UCI HAR Dataset/test/subject_test.txt')
subjects_test=subject_test[,1]
subject_train<-read.table('./UCI HAR Dataset/train/subject_train.txt')
subjects_train=subject_train[,1]

##Append activity/subjects to left side of test/train data sets for later merging
test<-cbind(activity=activities_test,test_data)
train<-cbind(activity=activities_train,train_data)

test<-cbind(id=subjects_test,test)
train<-cbind(id=subjects_train,train)

##merge test/train tables by subject id
mergedData=merge(test,train,all=TRUE)

## Read in file with column names
tmp=read.table('UCI HAR Dataset/features.txt')
features=as.character(tmp[,2])

## change activity names
mergedData$activity[mergedData$activity==1]='Walking'
mergedData$activity[mergedData$activity==2]='Walking_Upstairs'
mergedData$activity[mergedData$activity==3]='Walking_Downstairs'
mergedData$activity[mergedData$activity==4]='Sitting'
mergedData$activity[mergedData$activity==5]='Standing'
mergedData$activity[mergedData$activity==6]='Laying'

## Get mean/std measurement columns
mean_index=grep('mean()',features)
std_index=grep('std()',features)

## data frame of only mean/std measurements (add 2 to index because id + activity in 1st/2nd column)
meanstdData=data.frame(c(mergedData[,mean_index+2],mergedData[,std_index+2]))
## add in id/activity (because R was crashing if i tried to do it above)
selectData=cbind(activity=mergedData$activity,meanstdData)
selectData=cbind(id=mergedData$id,selectData)

## write out file
write.table(selectData,file='mean_std_compiled.txt')