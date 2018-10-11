

arrests<-USArrests
arrests=cbind(rownames(arrests),arrests)
colnames(arrests)=c("stateName")
df<-merge(mycensus,arrests,by = c( "stateName"))
colnames(df)=c("Statename","Murder","Assault","UrbanPop", "Rape","population","popover18", "percentover18")
df
