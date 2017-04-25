# getting_and_cleaning_data_course_project
Repo for the "Getting and Cleaning Data" Coursera course project

==================================================================
Summarized Data from the Human Activity Recognition Using Smartphones Dataset
Version 1.0
Tuyet Hayes
4/23/2017
==================================================================
Based on original data from:
Human Activity Recognition Using Smartphones Dataset
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
Experiment details extracted from original data README file:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record, the following summarized data is provided:
======================================
- An identifier of the subject who carried out the experiment.
- Its activity label. 
- A 66-feature vector with mean and standard deviation of time and frequency domain variables. 

The summarized dataset includes the following files:
=========================================

- 'README.md'general information for understanding summarized data project and files

- 'Codebook.md' which explains structure and definition of variables in summarized dataset.

- 'subjectaverages.txt' which includes summarized averages of mean and standard deviation features for each participant and activity

- 'run_analysis.R' contains R script for generating summarized data from the Human Activity Recognition Using Smartphones Dataset

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a column in the text file.
- Each row is a unique subject/activity combination.

For more information about this summarized data, contact: tuyhayes@hawaii.edu
For more information about the original dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
