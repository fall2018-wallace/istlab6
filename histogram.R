
#importing library for ggplot2
library("ggplot2")
#Creating a histogram for population using ggplot()
#Using geom_histogram() with binwidth attribute to group the data 
#ggtitle() function gives the main title for the histogram
histpop <- ggplot(mergeDF, aes(x=population)) + geom_histogram(binwidth=500000) + ggtitle("Histogram of Population")
histpop


#Creating a histogram for murder using ggplot()
#Since the murder rate does not have large numbers, we use the binwidth as 1
histpop1 <- ggplot(mergeDF, aes(x=Murder)) + geom_histogram(binwidth=1) + ggtitle("Histogram of Murder")
histpop1

#Creating a histogram for Assault using ggplot()
histpop2 <- ggplot(mergeDF, aes(x=Assault)) + geom_histogram(binwidth=10) + ggtitle("Histogram of Assault")
histpop2

#Creating a histogram for Rape using ggplot()
histpop3 <- ggplot(mergeDF, aes(x=Rape)) + geom_histogram(binwidth=1) + ggtitle("Histogram of Rape")
histpop3

#Creating a histogram for Urban Population using ggplot()
histpop4 <- ggplot(mergeDF, aes(x=UrbanPop)) + geom_histogram(binwidth=2) + ggtitle("Histogram of UrbanPop")
histpop4

#To binwidth is adjusted in each Histogram since each variable has different ranges of data.
#Hence the data is gouped into bins


#importing ggplot2 library to generate boxplots
library("ggplot2")

#using ggplot() to generate the boxplot.
#The function aes() is used to visualize the boxplot with variables on x and y axes.
boxplot1 <- ggplot(mergeDF, aes(x=factor(0),y=population)) + geom_boxplot() + ggtitle("Boxplot of Population")
boxplot1

#using ggplot() to generate the boxplot. 
#Function aes() is used to visualize the boxplot with variables on x and y axes.
boxplot2 <- ggplot(mergeDF, aes(x=factor(0),y=Murder)) + geom_boxplot() + ggtitle("Boxplot of Murder")
boxplot2

#The histogram shows the frequency of the data which is quite useful for visualization
#However,the boxplot shows the median, quartiles, maximum, minimum and the Interquartile range all in one graph.
#Thus we have a better understanding of a particular data using boxplot

