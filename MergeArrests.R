

arrests<-USArrests
arrests=cbind(rownames(arrests),arrests)
colnames(arrests)=c("stateName")
df<-merge(mycensus,arrests,by = c( "stateName"))
df
colnames(df)=c("Statename","population","popover18", "percentover18","Murder","Assault","UrbanPop", "Rape",)
df
