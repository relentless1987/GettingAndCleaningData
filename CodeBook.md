## Code Book for **data\_with_means.txt**

###Attribute description

1. Units


	- Subject:  No units
	- Activity:  No units 
	- Remaining:
		- Acc = acceleration = m/s^2
		- Gyro = gyroscope = degrees per second
		- Jerk = derivative of Acc w.r.t. is typically = m/s^3

2. Subject is subject # from 1 to 30.

3. Activity is one of these 6 items:
	- walking
	- walkingUpstairs
	- walkingDownstairs
	- sitting
	- standing
	- laying
	
4. Data has 30 subjects * 6 activity per subject = 180 rows.

5. Remaining attributes for position 3 to 68 (66 columns) are  means and std dev for XYZ (3 axial signals in X, Y, and Z directions) for 6 columns.

6. The *Mag entries are the mean and std dev of the magnitude of the 3 dimension signals.

7. The t* entries are time domain and the f* are frequency domain from these measurements.

8. Signals represented in the #3 to #68 columns (66 total). 
	- tBodyAcc-XYZ (6)
	- tGravityAcc-XYZ (6)
	- tBodyAccJerk-XYZ (6)
	- tBodyGyro-XYZ (6)
	- tBodyGyroJerk-XYZ (6)
	- tBodyAccMag (2)
	- tGravityAccMag (2)
	- tBodyAccJerkMag (2)
	- tBodyGyroMag (2)
	- tBodyGyroJerkMag (2)
	- fBodyAcc-XYZ (6)
	- fBodyAccJerk-XYZ (6)
	- fBodyGyro-XYZ (6)
	- fBodyAccMag (2)
	- fBodyAccJerkMag (2)
	- fBodyGyroMag (2)
	- fBodyGyroJerkMag (2)




###Attribute Position



1.	subject 
2.	activity
3.	tBodyAccMeanX
4.	tBodyAccMeanY
5.	tBodyAccMeanZ
6.	tBodyAccStdX
7.	tBodyAccStdY
8.	tBodyAccStdZ
9.	tGravityAccMeanX
10.	tGravityAccMeanY
11.	tGravityAccMeanZ
12.	tGravityAccStdX
13.	tGravityAccStdY
14.	tGravityAccStdZ
15.	tBodyAccJerkMeanX
16.	tBodyAccJerkMeanY
17.	tBodyAccJerkMeanZ
18.	tBodyAccJerkStdX
19.	tBodyAccJerkStdY
20.	tBodyAccJerkStdZ
21.	tBodyGyroMeanX
22.	tBodyGyroMeanY
23.	tBodyGyroMeanZ
24.	tBodyGyroStdX
25.	tBodyGyroStdY
26.	tBodyGyroStdZ
27.	tBodyGyroJerkMeanX
28.	tBodyGyroJerkMeanY
29.	tBodyGyroJerkMeanZ
30.	tBodyGyroJerkStdX
31.	tBodyGyroJerkStdY
32.	tBodyGyroJerkStdZ
33.	tBodyAccMagMean
34.	tBodyAccMagStd
35.	tGravityAccMagMean
36.	tGravityAccMagStd
37.	tBodyAccJerkMagMean
38.	tBodyAccJerkMagStd
39.	tBodyGyroMagMean
40.	tBodyGyroMagStd
41.	tBodyGyroJerkMagMean
42.	tBodyGyroJerkMagStd
43.	fBodyAccMeanX
44.	fBodyAccMeanY
45.	fBodyAccMeanZ
46.	fBodyAccStdX
47.	fBodyAccStdY
48.	fBodyAccStdZ
49.	fBodyAccJerkMeanX
50.	fBodyAccJerkMeanY
51.	fBodyAccJerkMeanZ
52.	fBodyAccJerkStdX
53.	fBodyAccJerkStdY
54.	fBodyAccJerkStdZ
55.	fBodyGyroMeanX
56.	fBodyGyroMeanY
57.	fBodyGyroMeanZ
58.	fBodyGyroStdX
59.	fBodyGyroStdY
60.	fBodyGyroStdZ
61.	fBodyAccMagMean
62.	fBodyAccMagStd
63.	fBodyBodyAccJerkMagMean
64.	fBodyBodyAccJerkMagStd
65.	fBodyBodyGyroMagMean
66.	fBodyBodyGyroMagStd
67.	fBodyBodyGyroJerkMagMean
68.	fBodyBodyGyroJerkMagStd
