
#importing library for ggplot2 to generate barcharts
library("ggplot2")

#Calculating the number of murders per state 
mergeDF$numMurders <- as.integer(mergeDF$population*mergeDF$Murder/100000)
murdersPerState <- mergeDF[,c(2,3,4,10)]
murdersPerState

#Creating a barchart for number of murders per state using ggplot() 
barChart1 <- ggplot(mergeDF, aes(x=stateName, y=numMurders)) + geom_col() + ggtitle("Bar chart of murders per state")
barChart1

#Creating a barchart to rotate text on x-axis using theme() and aes() to visualize the graph
barChart2 <- ggplot(mergeDF, aes(x=stateName, y=numMurders)) + geom_col() + ggtitle("Total Murders") + theme(axis.text.x = element_text(angle = 90, hjust = 1))
barChart2

#Creating a barchart for number  of murders per state using ggplot()
barChart3 <- ggplot(mergeDF, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1)) + geom_col() + ggtitle("Sorted bar chart of murders per state")
barChart3

#Creating a barchart to show percentOver18 as color of the bar using ggplot()
barChart4 <- ggplot(mergeDF, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1)) + geom_col(aes(size=percentOver18,color=percentOver18)) + ggtitle("Sorted bar chart showing percentOver18 as color of bar")
barChart4

