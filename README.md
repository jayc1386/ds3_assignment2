ds3_assignment2
===============

Getting and Cleaning Data Programming Assignment 2

This repository contains a script "run_analysis.R" that extracts data from the UCI HAR Dataset and formats it into an organized and readable table. It combines training data and test data and then adds subject id numbers and activity name labels to each observation. The observations are then filtered so that only the subject ids, labels, and measurements of means and standard deviations remain. From there, the observation data is averaged across unique pairs of subject id and activity. The summarized data is then written into a table named summarized_data.txt.

The repository also includes the data used by the script, the resulting .txt document created by running the script and a codebook for this project.

The course for this project is the "Getting and Cleaning Data" offered by Johns Hopkins University through Coursera.org.

The project guidelines can be found at https://class.coursera.org/getdata-009/human_grading/view/courses/972587/assessments/3/submissions

The original dataset can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A decription for the dataset can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
