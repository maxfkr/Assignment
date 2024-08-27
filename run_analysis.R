# Load necessary libraries
library(dplyr)

# Step 1: Download and unzip the dataset
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "dataset.zip")
unzip("dataset.zip")

# Step 2: Load the data
# Load training data
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Load test data
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Load features and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Step 3: Merge the training and test sets to create one data set
# Combine the data sets
all_data <- rbind(train_data, test_data)
all_labels <- rbind(train_labels, test_labels)
all_subjects <- rbind(train_subjects, test_subjects)

# Name the columns
colnames(all_data) <- features[, 2]
colnames(all_labels) <- "Activity"
colnames(all_subjects) <- "Subject"

# Step 4: Extract only the measurements on the mean and standard deviation
mean_std_columns <- grepl("mean\\(\\)|std\\(\\)", features[, 2])
data_mean_std <- all_data[, mean_std_columns]

# Step 5: Use descriptive activity names to name the activities
all_labels$Activity <- factor(all_labels$Activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

# Step 6: Appropriately label the data set with descriptive variable names
# Combine all data into one dataset
final_data <- cbind(all_subjects, all_labels, data_mean_std)

# Rename the columns to be more descriptive
colnames(final_data) <- gsub("^t", "Time", colnames(final_data))
colnames(final_data) <- gsub("^f", "Frequency", colnames(final_data))
colnames(final_data) <- gsub("Acc", "Accelerometer", colnames(final_data))
colnames(final_data) <- gsub("Gyro", "Gyroscope", colnames(final_data))
colnames(final_data) <- gsub("Mag", "Magnitude", colnames(final_data))
colnames(final_data) <- gsub("BodyBody", "Body", colnames(final_data))

# Step 7: Create a second tidy data set with the average of each variable for each activity and each subject
tidy_data <- final_data %>%
        group_by(Subject, Activity) %>%
        summarise_all(mean)

# Step 8: Write the tidy data set to a txt file
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)

getwd()