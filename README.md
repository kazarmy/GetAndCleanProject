# README for the `run_analysis.R` script

The `run_analysis.R` script takes as input the data from the UCI Machine
Learning Repository's [Human Activity Recognition Using Smartphones Data
Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
and produces as output a wide tidy data set with the average of the means and
standard deviations of each measurement, for each activity and each subject. The
tidy data set meets the principles of tidiness stated in [[1]](#ref1) and
[[2]](#ref2), and it has a [code
book](https://github.com/kazarmy/GetAndCleanProject/blob/master/CodeBook.md).

Regarding the "what columns are measurements on the mean and standard deviation"
issue, I have decided to include only features with `mean()` or `std()` because
"measurement" here appears to refer only to the smartphone sensor signals listed
in Table 2 of [[3]](#ref3).

## Running the script

1. Install the `dplyr` package if you have not already done so.
1. Download
   [run_analysis.R](https://raw.githubusercontent.com/kazarmy/GetAndCleanProject/master/run_analysis.R)
   and the [HAR data set
   zipfile](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
   into R's working directory.
1. Execute the command `source("run_analysis.R")`.  The script will print
   messages showing the steps taken.
1. If all goes well, the tidy data set will be in `tidy_data_2.txt` in the `UCI
   HAR Dataset` subdirectory of the working directory.

## Reading the tidy data set

After you have run the `run_analysis.R` script, you can read and view the tidy
data set using the following code:

```r
data <- read.table("UCI HAR Dataset/tidy_data_2.txt", header = TRUE, check.names = FALSE)
View(data)
```

Note that despite `check.names = FALSE` above, the columns are accessible from
R. You just need to surround the column names with backticks, e.g.
``data$`avg-tBodyAcc-mean()-X` ``. The [code
book](https://github.com/kazarmy/GetAndCleanProject/blob/master/CodeBook.md)
contains the rationale for the column names.

## References

[1] <a name="ref1"></a>Hadley Wickham (2014). "Tidy Data". *Journal of Statistical Software*, vol. 59, no. 10.

[2] <a name="ref2"></a>David Hood (2015). "Tidy Data and the Assignment".
[https://class.coursera.org/getdata-030/forum/thread?thread_id=107](https://class.coursera.org/getdata-030/forum/thread?thread_id=107)
Accessed on 24 July 2015.

[3] <a name="ref3"></a> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier
Parra and Jorge L. Reyes-Ortiz (2013). "A Public Domain Dataset for Human
Activity Recognition Using Smartphones". 21th European Symposium on Artificial
Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013.
Bruges, Belgium.
