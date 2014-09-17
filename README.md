## Coursera Getting and Cleaning Data project#

### Instructions

### 1.  Source data file  
Unzip the source found here:


[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Data Set")


into the working R directory as your local drive.

### 2. run_analysis.R

Put run_analysis.R in the same working directory as source data

###	3.  Execute run_analysis.R

The script will take about 30 seconds to execute.  It works through the following steps:

	- Create a single dataset from the training and test data
	- Extracts mean and std dev for each measurement
	- Creates and labels descriptive activities:
		- walking
		- walkingUpstairs
		- walkingDownstairs
		- sitting
		- standing
		- laying
	- Creates the tidy data set with activities, mean, and std dev

###	4.  Output

**data\_with_means.txt** will be found in the working directory as the final tidy data output

###5. CodeBook.md

CodeBook.md provides descriptions for each of the 68  attributes in **data\_with_means.txt**.



	