# Copyright (C) 2015 Khairul Azhar Kasmiran. All rights reserved.
#
# Standard disclaimer applies:
#
# THIS CODE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS CODE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# This code was produced using the facilities of Universiti Putra Malaysia,
# Malaysia.

# ------------------------------------------------------------------------------

# This script assumes that the Samsung data zipfile is in the working directory.
# I have tried to make the script as simple as possible.

# Load required library.
library(dplyr)

message("Unzipping HAR dataset...")
# Unzip the Samsung data zipfile and change to the data directory.
data.zipfilename <- "getdata-projectfiles-UCI HAR Dataset.zip"
if (!file.exists(data.zipfilename)) {
    stop(paste("HAR dataset zipfile (", data.zipfilename, ") not found in",
               " working directory (", getwd(), "). Please download or copy",
               " the file into the working directory and try again.", sep=""))
}
unzip(data.zipfilename)
setwd("UCI HAR Dataset")

# ------------------------------------------------------------------------------

### Step 1: Merges the training and the test sets to create one data set.
message("Starting Step 1...")

# Read the training and test data sets.
train.data <- read.table("train/X_train.txt")
test.data <- read.table("test/X_test.txt")

# Merge the training and test data sets. Activity and subject lists are merged
# in Step 4 to simplify Step 2 below.
all.data <- rbind(train.data, test.data)

# ------------------------------------------------------------------------------

### Step 2: Extracts only the measurements on the mean and standard deviation
###         for each measurement.
message("Starting Step 2...")

# Read the feature list.
feat <- read.table("features.txt", col.names=c("col", "name"))

# Get only mean and standard deviation measurements for each measurement. I'm
# including only features with "mean()" or "std()" because "measurement" here
# appears to refer only to the smartphone sensor signals listed in Table 2 of
# the "A Public Domain Dataset for Human Activity Recognition Using Smartphones"
# paper.
wanted.feat <- feat[grepl("mean()", feat$name, fixed=TRUE) |
                    grepl("std()", feat$name, fixed=TRUE),]

# Extract only mean and standard deviation data.
all.wanted.data <- all.data[, wanted.feat$col]

# ------------------------------------------------------------------------------

### Step 3: Uses descriptive activity names to name the activities in the data
###         set.
message("Starting Step 3...")

# Read the activity label list.
act <- read.table("activity_labels.txt", col.names=c("id", "name"))

# Read the training and test activity label ids.
train.act <- read.table("train/y_train.txt", col.names="id")
test.act <- read.table("test/y_test.txt", col.names="id")

# Merge the labels as for the data before (train then test).
all.act <- rbind(train.act, test.act)

# Convert activity label ids into names. Assumes that ids start from 1 with step
# 1.
all.act$name <- act[all.act$id,]$name

# Just keep the names.
all.act <- all.act[,"name", drop=FALSE]

# ------------------------------------------------------------------------------

### Step 4: Appropriately labels the data set with descriptive variable names.
message("Starting Step 4...")

# Read the subject lists.
train.subj <- read.table("train/subject_train.txt", col.names="id")
test.subj <- read.table("test/subject_test.txt", col.names="id")

# Merge the subjects as for the data before (train then test).
all.subj <- rbind(train.subj, test.subj)

# Convert subjects from integer to factor.
all.subj$id <- as.factor(all.subj$id)

# Combine subjects, activities, and mean and std data into Tidy Data Set 1.
tidy.data.1 <- cbind(all.subj, all.act, all.wanted.data)

# Set variable names of Tidy Data Set 1.
names(tidy.data.1) <- c("subject", "activity", as.character(wanted.feat$name))

# ------------------------------------------------------------------------------

### Step 5: From the data set in step 4, creates a second, independent tidy data
###         set with the average of each variable for each activity and each
###         subject.
message("Starting Step 5...")

# Derive average for each variable by subject and activity and put it into Tidy
# Data Set 2.
tidy.data.2 <- tidy.data.1 %>% group_by(subject, activity) %>%
                               summarise_each(funs(mean))

# Set variable names of Tidy Data Set 2.
names(tidy.data.2) <- c("subject", "activity",
                        sapply(wanted.feat$name,
                               function(name) paste("avg", name, sep="-")))

# ------------------------------------------------------------------------------

message("Writing Tidy Data Set 2 to file...")
# Write Tidy Data Set 2 to file.
write.table(tidy.data.2, file="tidy_data_2.txt", row.names=FALSE)

# Change back to the original working directory.
setwd("..")

message("Done!")
