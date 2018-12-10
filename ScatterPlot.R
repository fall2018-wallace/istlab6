
    library("ggplot2")
    #Creating a scatterplot that has population on the x axis and percentOver18 on the y axis
    #The colour and size represents the murder rate
    ScatterPlot <- ggplot(mergeDF, aes(x= population, y =percentOver18)) + geom_point(aes(size = Murder, color = Murder)) + ggtitle("Scatter Plot")
    ScatterPlot

