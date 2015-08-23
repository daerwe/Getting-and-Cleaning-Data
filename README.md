
There is one script, run_analysis.R, that performs the analysis.  

In Step 1, all training and testing data are read into R.  Column names for the features are immediately labeled from the features.txt file.  Subject Id and type of activity are also read in and labelled.  These attributes are added as new columns to the feature data using cbind.  The training and testing data are merged together using rbind.

In Step 2, I use the grep command to find all attributes containing "std" or "mean."  These are the features which are means or standard deviations.  All means have corresponding standard deviations, except for the weighted averages of frequency components, labeled with meanFreq().  I do not select the attributes containing "Mean" (note the capital "M"), since these attributes are not means.  This results in 81 attributes.  

In Step 3, I replace the activity labels (1-6) with the names of the activities using the correspondence given by activity_labels.txt.  

I do not perform Step 4, since I already did this in Step 1 by labelling the columns when I read them in.  I could change the feature names so they are more intuitive, but this would be tedious and unnecessary, especially with the addition of a codebook.  

Finally, in Step 5, I utilize the dplyr package to group the data by subject ID and activity.  I then use the summarise_each function to take means over all columns.  I do not rename the features since all are now means, so this can just be explained in the codebook.  The output is the desired tidy dataset.  

> Written with [StackEdit](https://stackedit.io/).