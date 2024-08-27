
# CodeBook for Human Activity Recognition Using Smartphones Dataset

## Overview

This codebook describes the variables, data, and transformations performed on the Human Activity Recognition Using Smartphones dataset. The data was collected from the accelerometers and gyroscopes of Samsung Galaxy S smartphones worn by 30 subjects performing various activities.

## Source Data

The dataset is available from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Variables

- **Subject**: The ID of the subject (1-30).
- **Activity**: The activity performed by the subject (e.g., WALKING, SITTING, etc.).
- **TimeBodyAccelerometerMeanX/Y/Z**: Mean value of the time domain body acceleration in the X, Y, and Z directions.
- **TimeBodyAccelerometerStdX/Y/Z**: Standard deviation of the time domain body acceleration in the X, Y, and Z directions.
- **TimeGravityAccelerometerMeanX/Y/Z**: Mean value of the time domain gravity acceleration in the X, Y, and Z directions.
- **TimeGravityAccelerometerStdX/Y/Z**: Standard deviation of the time domain gravity acceleration in the X, Y, and Z directions.
- **TimeBodyGyroscopeMeanX/Y/Z**: Mean value of the time domain body gyroscope data in the X, Y, and Z directions.
- **TimeBodyGyroscopeStdX/Y/Z**: Standard deviation of the time domain body gyroscope data in the X, Y, and Z directions.
- **FrequencyBodyAccelerometerMeanX/Y/Z**: Mean value of the frequency domain body acceleration in the X, Y, and Z directions.
- **FrequencyBodyAccelerometerStdX/Y/Z**: Standard deviation of the frequency domain body acceleration in the X, Y, and Z directions.
- **FrequencyBodyGyroscopeMeanX/Y/Z**: Mean value of the frequency domain body gyroscope data in the X, Y, and Z directions.
- **FrequencyBodyGyroscopeStdX/Y/Z**: Standard deviation of the frequency domain body gyroscope data in the X, Y, and Z directions.

## Transformations

1. **Merging Datasets**: The training and test datasets were merged into one dataset.
2. **Extracting Measurements**: Only the measurements on the mean and standard deviation were extracted.
3. **Applying Descriptive Activity Names**: The activity identifiers were replaced with descriptive names.
4. **Labeling the Dataset**: The dataset was labeled with descriptive variable names.
5. **Creating Tidy Data**: A tidy dataset was created with the average of each variable for each activity and each subject.

## Output File

- **`tidy_data.txt`**: The tidy dataset where each row contains the average of each variable for each activity and each subject.
