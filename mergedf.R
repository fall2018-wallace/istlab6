
#Copying USArrest into a local variable
arrests <- USArrests

#Using rownames() to create a column for state name
rownames(func1) <- as.vector(func1[,"stateName"])

#merging 2 dataframes with attributes from both dataframes
mergeDF <- merge(func1,arrests, by="row.names")
mergeDF

