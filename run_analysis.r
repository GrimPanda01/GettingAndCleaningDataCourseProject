library(dplyr)

features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = ",")

observations_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", fill = TRUE)

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = ",")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = ",")

observations_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", fill = TRUE)

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = ",")

for (i in 1:561) {colnames(observations_test)[i] <- features$V2[i]}

for (i in 1:561) {colnames(observations_train)[i] <- features$V2[i]}

obs_test_activity_codes <- cbind(y_test, observations_test)

colnames(obs_test_activity_codes)[1] <- "activity"

obs_test_activities <- cbind(subject_test, obs_test_activity_codes)

colnames(obs_test_activities)[1] <- "subject"

obs_train_activity_codes <- cbind(y_train, observations_train)

colnames(obs_train_activity_codes)[1] <- "activity"

obs_train_activities <- cbind(subject_train, obs_train_activity_codes)

colnames(obs_train_activities)[1] <- "subject"

full_data <- rbind(obs_test_activities, obs_train_activities)

full_data[,2] <- sub("1", "WALKING", full_data[,2])

full_data[,2] <- sub("2", "WALKING_UPSTAIRS", full_data[,2])

full_data[,2] <- sub("3", "WALKING_DOWNSTAIRS", full_data[,2])

full_data[,2] <- sub("4", "SITTING", full_data[,2])

full_data[,2] <- sub("5", "STANDING", full_data[,2])

full_data[,2] <- sub("6", "LAYING", full_data[,2])

meanStdColumns <- grep("-mean()|-std()", features$V2, value = FALSE)

meanStdColumns <- meanStdColumns + 2

meanStdColumnsNames <- grep("-mean()|-std()", features$V2, value = TRUE)

indices <- c(1,2, meanStdColumns)

mean_std_data <- full_data[,indices]

final_frame <- data.frame(matrix(0, nrow = 180, ncol = 81))

for (j in 1:30) {

	final_frame[j, 1] <- j
	
	final_frame[j, 2] <- "WALKING"

	for (k in 3:81) {

		final_frame[j, k] <- mean(mean_std_data[mean_std_data[["subject"]] == j & mean_std_data[["activity"]] == "WALKING", k])		
	}
}

for (j in 1:30) {

	final_frame[j + 30, 1] <- j
	
	final_frame[j + 30, 2] <- "WALKING_UPSTAIRS"

	for (k in 3:81) {

		final_frame[j + 30, k] <- mean(mean_std_data[mean_std_data[["subject"]] == j & mean_std_data[["activity"]] == "WALKING_UPSTAIRS", k])		
	}
}

for (j in 1:30) {

	final_frame[j + 60, 1] <- j
	
	final_frame[j + 60, 2] <- "WALKING_DOWNSTAIRS"

	for (k in 3:81) {

		final_frame[j + 60, k] <- mean(mean_std_data[mean_std_data[["subject"]] == j & mean_std_data[["activity"]] == "WALKING_DOWNSTAIRS", k])		
	}
}

for (j in 1:30) {

	final_frame[j + 90, 1] <- j
	
	final_frame[j + 90, 2] <- "SITTING"

	for (k in 3:81) {

		final_frame[j + 90, k] <- mean(mean_std_data[mean_std_data[["subject"]] == j & mean_std_data[["activity"]] == "SITTING", k])		
	}
}

for (j in 1:30) {

	final_frame[j + 120, 1] <- j
	
	final_frame[j + 120, 2] <- "STANDING"

	for (k in 3:81) {

		final_frame[j + 120, k] <- mean(mean_std_data[mean_std_data[["subject"]] == j & mean_std_data[["activity"]] == "STANDING", k])		
	}
}

for (j in 1:30) {

	final_frame[j + 150, 1] <- j
	
	final_frame[j + 150, 2] <- "LAYING"

	for (k in 3:81) {

		final_frame[j + 150, k] <- mean(mean_std_data[mean_std_data[["subject"]] == j & mean_std_data[["activity"]] == "LAYING", k])		
	}
}

meanStdColumnsNames <- paste("average of", meanStdColumnsNames)

first_two <- c("subject", "activity")

final_col_names <- c(first_two, meanStdColumnsNames)

colnames(final_frame) <- final_col_names
