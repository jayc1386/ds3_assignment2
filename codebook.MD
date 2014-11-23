run_analysis Codebook
=================
The following variables are used in this function:

datadir: this is a string that locates the UCI HAR folder inside of the current working directory.

features: this is a dataframe containing the original observation names for the UCI HAR dataset.

colheads: this is a vector of column headers used for combining all the raw data in the UCI HAR dataset.

sub1: this is a dataframe containing the subject ids involved in the training portion of the observations.

sub2: this is a dataframe containing the subject ids involved in the testing portion of the observations.

allsubs: this is a dataframe containing the combination of the sub1 and sub2 dataframes.

actlabels: this is a dataframe containing activity id numbers and their corresponding activity name.

y1: this is a dataframe containing the activity ids involved in the training portion of the observations.

y2: this is a dataframe containing the activity ids involved in the testing portion of the observations.

allnamedy: this is a dataframe containing the combination of the y1 and y2 dataframes after they have been translated from activity ids to activity names.

x1: this is a dataframe containing the variables measured in the training portion of the observations.

x2: this is a dataframe containing the variables measured in the testing portion of the observations.

allx: this is a dataframe containing the combination of the x1 and x2 dataframes.

alldata: this is a dataframe that is the result of combining the dataframes allsubs, allnamedy, and allx.

colsfiltered: this is a vector that will be used to subset the alldata dataframe into the newdata dataframe. It will also be used afterwards to capture the resulting column headers (which will contain the same values but in a different order).

newdata: this is a dataframe that results from subsetting the alldata dataframe with the colsfiltered variable.

summdata: this is a dataframe that results from summarizing the observations by mean across unique pairs of subject ids and activities.

The data table that results from running the script in this project(seen in summarized_data.txt) contains the identifier columns "subject_id" and "activity" and the average means and standard deviations for unique pairs of the identifiers across the following observations: 

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag