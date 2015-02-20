# GettingAndCleaningData
Repo for the course project for Coursera Getting and Cleaning Data

The purpose of this repo is to collate and summarise data collected from the accelerometers from the Samsung Galaxy S smartphone using R. The source data are to be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script assumes that the data are unpacked and in your current R working directory.

This repo stores these files:
readme.md - this file.
run_analysis.R - script to load, collate and summarise the data to produce a tidy data set.
averages.txt - a file containing the output of the above script.
CodeBook.md - a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data.

To use the contents of this repo, you should unpack the data from the link above into your R working directory and place the run_analysis.R script there also, then call

source("run_analysis.R")

...and the tidied data will then be left in a variable called "averages".
