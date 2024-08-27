
# Human Activity Recognition Using Smartphones Dataset Analysis

## Overview

This project analyzes data collected from the accelerometers of Samsung Galaxy S smartphones as part of the Human Activity Recognition Using Smartphones dataset. The goal is to create a tidy data set that can be used for further analysis.

## Repository Contents

- `run_analysis.R`: The R script that performs the data cleaning and analysis.
- `tidy_data.txt`: The output file containing the tidy data set.
- `CodeBook.md`: A code book that describes the variables and transformations performed on the dataset.
- `README.md`: This file, providing an overview and instructions for the project.

## Instructions

1. **Download the Dataset**: The dataset is automatically downloaded and unzipped by the script.
2. **Run the Script**: Place the `run_analysis.R` script in your working directory and run it in R. The script will generate `tidy_data.txt` in your working directory.

```bash
# Example of running the script in R
source("run_analysis.R")
```

## Dependencies

The script requires the `dplyr` package for data manipulation. Install it using the following command if it's not already installed:

```r
install.packages("dplyr")
```

## Summary of the Script

- **Step 1**: Downloads and unzips the dataset.
- **Step 2**: Loads and merges the training and test datasets.
- **Step 3**: Extracts only the measurements on the mean and standard deviation.
- **Step 4**: Uses descriptive activity names to name the activities.
- **Step 5**: Labels the dataset with descriptive variable names.
- **Step 6**: Creates a tidy data set with the average of each variable for each activity and each subject, and writes it to `tidy_data.txt`.
