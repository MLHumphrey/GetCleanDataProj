# GetCleanDataProj
This repository contains an R programming script, run_analysis.R, that takes the raw
data on human activity recognition using a Galaxy S smartphone provided by the UCI 
Machine Learning Repository and turns that data into one text file called galaxys_tidy.txt
with a line for each subject/activity combination and the average for all measurements from
the original data set that were labaled as mean() or std().

For more details on the data set, see:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Prior to runing the run_analysis script you will need to load the following packages:
data.table
dplyr

Once the required packages are loaded, the run_analysis.R script attached to this repository
can be copied and pasted into R or run.  The script will locate and download the data set into
a folder called data in your working directory.  Original source of the data files is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script will output a text file into the data folder called galaxys_tidy.txt.  (You can
also access the data written to the text file, by typing "tidy" without the quotes.)  To read
the file use: read.table(file="./data/galaxys_tidy.txt")
As of the writing of this document, the file has 181 rows (one header row and 180 rows of data
for the thirty subjects and six activities) and 68 columns (one for the subject number, one for
the activity description, and 66 for the measurements described in the original data as mean()
or std().)

See the code book and R script for a detailed description of how the data was transformed and
what the variables represent.
