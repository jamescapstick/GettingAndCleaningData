##1) Merge the training and the test sets to create one data set.

##first, lets get our directories and file names together.
##this assumes that the data is unpacked and in your working directory.
data_dir <- "./UCI HAR Dataset/"
test_dir <- paste(data_dir, "test/", sep="")
train_dir <- paste(data_dir, "train/", sep="")
subject_test_file <- paste(test_dir, "subject_test.txt", sep="")
x_test_file <- paste(test_dir, "X_test.txt", sep="")
y_test_file <- paste(test_dir, "y_test.txt", sep="")
subject_train_file <- paste(train_dir, "subject_train.txt", sep="")
x_train_file <- paste(train_dir, "X_train.txt", sep="")
y_train_file <- paste(train_dir, "y_train.txt", sep="")
features_file <- paste(data_dir, "features.txt", sep="")
activity_labels_file <- paste(data_dir, "activity_labels.txt", sep="")

##load in the files
subject_test_data <- read.delim(subject_test_file, header=FALSE, sep="")
x_test_data <- read.delim(x_test_file, header=FALSE, sep="")
y_test_data <- read.delim(y_test_file, header=FALSE, sep="")
subject_train_data <- read.delim(subject_train_file, header=FALSE, sep="")
x_train_data <- read.delim(x_train_file, header=FALSE, sep="")
y_train_data <- read.delim(y_train_file, header=FALSE, sep="")
features_data <- read.delim(features_file, header=FALSE, sep="")
activity_labels_data <- read.delim(activity_labels_file, header=FALSE, sep="")

##set up the column labels that we know - this is actually part 4) of the
##assignment, but I've done it here to make life easier for myself when
##choosing which columns to keep
names(subject_test_data) <- c("Subject")
names(x_test_data) <- features_data$V2
names(y_test_data) <- c("ActivityID")
names(subject_train_data) <- c("Subject")
names(x_train_data) <- features_data$V2
names(y_train_data) <- c("ActivityID")
names(activity_labels_data) <- c("ActivityID","Activity")

##join everything together to make the master tables for each
test_data <- cbind(subject_test_data, x_test_data, y_test_data)
train_data <- cbind(subject_train_data, x_train_data, y_train_data)

##merge test and training data sets to create one data set
combined_data <- rbind(test_data, train_data)

##2) Extract only the measurements on the mean and standard deviation for 
##   each measurement. 
##use grepl to find the column names we want to keep
##we want: anything with mean() or Mean()
##         anything with std()
##         our subject
##         our activity id
##I've discounted any of the meanFreq() or angles as they didn't seem
##to fit the criteria of the question.
combined_data <- combined_data[, grepl("[Mm]ean\\(\\)|std\\(\\)|Subject|ActivityID", colnames(combined_data))]

##3) Use descriptive activity names to name the activities in the data set
##merge the activity names in
combined_data <- merge(combined_data, activity_labels_data, by.x="ActivityID", by.y="ActivityID")

##remove the old "ActivityID" column - we don't need that now
combined_data$ActivityID <- NULL

##4) Appropriately label the data set with descriptive variable names. 
##by this stage, everything is already labelled as we applied the column labels
##in part 1).

##5) From the data set in step 4, create a second, independent tidy data set 
##   with the average of each variable for each activity and each subject.
##what we need to do here is group the combined_data by subject and activity.
##then, pipe that into the summarise_each function so we can summarise
##each of the remaining columns with the mean() function.
averages <- combined_data %>%
            group_by(Subject, Activity) %>%
            summarise_each(funs(mean))
