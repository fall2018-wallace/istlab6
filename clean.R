
#Read the census dataset 
#We clean the dataset here in the function func1

func1 <- function(dfStates1)
  {
  #Clean the dataframe
  #Removing the last Row(Puerto Rico). Using the '-' sign.
  dfStates1<- dfStates1[-53,]
  dfStates1
  
  #Removing the first row to remove the summary of United States row
  dfStates1 <- dfStates1[-1,]
  nrow(dfStates1)
  dfStates1
  
  #Removing unwanted columns from the dataframe by using the '-' sign 
  dfStates1 <- dfStates1[,-1:-4]
  dfStates1
  
  #Renaming columns to simplify the data using the colname function
  colnames(dfStates1) <- c("stateName","population","popOver18","percentOver18")
    return(dfStates1)
}

func1 <- func1(raw_data)
str(func1)

