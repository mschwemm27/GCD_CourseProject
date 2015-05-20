##
## run_analysis.R
## 
##
## This script reads in the Human Activity Recognition Using Smartphones 
## Data Set, merges the training and testing sets, extracts the mean 
## and standard deviations of the measurements, and creates a tidy
## data set that collects the means of these features for every 
## activity and every subject.  See ReadMe.md for more information.
##
## NOTE: this script assumes the training and testing data sets 
## are in the current working directory.  
##

#### Read in data and create descriptive labels ####
 
# Read in data 
X_train<-read.table('X_train.txt')
y_train<-read.table('y_train.txt')
X_test<-read.table('X_test.txt')
y_test<-read.table('y_test.txt')
s_train<-read.table('subject_train.txt')
s_test<-read.table('subject_test.txt')

# Read in feature names and activity labels
fnames<-read.table('features.txt',colClass="character")
anames<-read.table('activity_labels.txt',colClass="character")

# Create descriptive activity labels for the training and test sets 
ntrain<-length(y_train$V1)
ntest<-length(y_test$V1)
alabels_train<-character(ntrain)
alabels_test<-character(ntest)
for (kk in 1:length(anames$V1)){
	alabels_train[y_train$V1==anames$V1[kk]]=anames$V2[kk]
	alabels_test[y_test$V1==anames$V1[kk]]=anames$V2[kk]
}

# Add descriptive feature labels to data sets
names(X_train)<-fnames$V2
names(X_test)<-fnames$V2
	
# Append subject and activity columns to training and test sets
X_train$activity<-alabels_train
X_train$subject<-s_train$V1
X_test$activity<-alabels_test
X_test$subject<-s_test$V1

# Merge the training and testing data sets using rbind()
DT<-rbind(X_train,X_test)


#### Extract only the columns with the means and standard deviations ####
#### of the measurements              

# Find the column indices of the means
ind_mean<-grep("mean\\(\\)",names(DT))

# Find the columns indices of the standard deviations
ind_std<-grep("std\\(\\)",names(DT))

# Combine indices
inds<-append(ind_mean,ind_std)

# Column indices of the mean and standard deviations of the
# measurements and adding the indices of the activity and 
# subject columns
inds<-append(inds,c(562,563))


# New data frame with only the mean and standard deviations of the
# measurements and the activity and subject columns
df<-DT[,inds]


# Some of the feature names have '-' and '()' characters. 
# This removes these characters from the names
# Remove '-'
names(df)<-gsub("-","_",names(df))
# Remove ()
names(df)<-sub("\\()","",names(df))


#### Create the final tidy data set ####

# Load the dplyr library to help manipulate data frame
library(dplyr)

# Create a data frame grouped by subject and activity
u<-group_by(df,activity,subject)

# Use summarise_each() to take the means of the features 
# for each activity level and each subject
tidy_data<-summarise_each(u,funs(mean))

# Write tidy_data to a text file
write.table(tidy_data,file='tidy_data.txt',row.name=FALSE)








