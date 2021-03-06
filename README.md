This is the ReadMe file to outline the steps taken to derive the final, tidy data set 
from the smartphone data.

The initial steps of the script read the .txt files utilizing read.table from the 
R working directory (the instructions say to assume the files are already in the working 
directory).  It is important to indicate the separating character is "" and that the file 
does not have a header so that the data is correctly formatted. Also, the feature names 
were converted to characters using as.character.

Next a unified data table was created.  This was done by first creating a "test" data set 
and a "train" data set.  To do this cbind was used to add the Subject, Activity (y data), 
and measurements (x data) for both sets.  Next, rbind was used to vertically combine the 
two datasets into one "complete" data set with 563 columns and 10299 observations.  The 
columns were then labeled using colnames with a set consisting of "Subject", "Activity", 
and the labels in the features set.

Once we have a complete, labeled data set, a logical expression was used to replace 
the numeric activity code with the descriptive activity names in the activity_labels.txt 
file.  For example, a value of "1" in the activity column was replaced with "Walking".

The next step was then to subset the data to create a data set containing only the mean 
and standard deviation columns. First, a pattern vector was created containing 
identifying parts of all of the unwanted variable names.  This was done because it easily
allowed the exclusion of the "angle" and "frequency mean" variables.  The grep function 
was then used over all of the column names.  The paste function with the | or "or" 
indicator within the grep function allowed the use of all of the factors of the pattern 
vector instead of just a single factor.  The value argument was set to TRUE so the 
function would return the value instead of a logical vector, and invert was set to TRUE 
because the pattern was set up to identify only the column names that we did not want.  By
selecting invert = TRUE we select the column names that DO NOT match the names in the 
pattern.  This vector of column names was used to subset the "complete" data set to 
create a data set "tidy" which contained 68 columns (Subject, Activity, and 66 
mean/standard deviation columns) and 10299 observations.

The column names were then altered to make them clearer/more descriptive using the 
gsub function.  "t" or "f" were replaced with Time and Freq and the special characters 
were removed.  Camelcase was used in the column names instead of all lowercase letters 
because the length of the names would have made reading the labels confusing if they were
a single case (lower or UPPER only).  Additionally, the "BodyBody" error in the column 
names was also corrected to "Body".  Once the names in the subnames vector were corrected 
they were applied to the "tidy" data set with colnames.

Finally, to create the "final" dataset the ddply function was used.  This function 
(part of the plyr library) applies a function over subset of a data frame and creates a 
new resulting data frame.  This was applied with subsetting first on the subject variable 
and then on the activity variable and the mean was generated for each column using the 
numcolwise function to apply the mean.  This created a new data set with the mean for 
each column for each activity for each subject.  Because there are 6 activities and 30 
volunteers, this means the "final" data set is 180 rows with the 68 columns. 

The "final" data set was then exported as final.txt to the working directory.  It can be 
read into R using the read.table command with sep = "" and header = T.


