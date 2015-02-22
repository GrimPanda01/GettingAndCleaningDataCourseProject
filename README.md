# GettingAndCleaningDataCourseProject

My script runs in the following steps.

It loads the dplyr package.

It reads the data from the following files in the Samsung data folder:

	features.txt
	subject_test.txt
	X_test.txt
	y_test.txt
	subject_train.txt
	X_train.txt
	y_train.txt
	
It uses the data from the features.txt file to name the columns of data in the files X_test.txt and X_train.txt, which are stored in the data frames observations_test and observations_train, respectively. It does this because the data in the features.txt file is simply a list of the variable names in the X_test.txt and X_train.txt files.

It then binds the data from the y_test.txt and y_train.txt files, which are lists of the codes of the activities used for the observations recorded in the X_test.txt and X_train.txt files, to the observations_test and observations_train data frames. It then labels these new columns as "activity".

It then binds the data from the subject_test.txt and subject_train.txt files, which are lists of the subjects used for the observations recorded in the X_test.txt and X_train.txt files, to the observations_test and observations_train data frames. It then labels these new columns as "subject".

It then binds the data frame for the train data to data frame for the test data.

It then replaces the activity codes in the "activity" column of the combined data frame (full_data) with the names of the activities themselves.

It then finds the indices of all variables containing the character strings "-mean()" or "-std()" - which assumedly covers all variables containing only information about means or standard deviations of measurements - and uses them to create a new data frame (mean_std_data) with just those variables, as well as the columns for activity and subject.

It then uses this new data frame to calculate the average of the variables containing information about means and standard deviations of measurements by the intersections of activites and subjects. It writes the results to yet another data frame (final_frame).

It then labels the columns of the final_frame data frame with appropriate variable names.

To view the final data frame in R, you can use the following code (you will need to fill in the appropriate arguments):

data <- read.table(file_path, header = TRUE)
