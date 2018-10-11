

arrests<-USArrests
arrests=cbind(rownames(arrests),arrests)
colnames(arrests)=c("stateName")
df<-merge(mycensus,arrests,by = c( "stateName"))
df
colnames(df)=c("Statename","population","popover18", "percentover18","Murder","Assault","UrbanPop", "Rape")
df

arrests=cbind(rownames(arrests),arrests)
colnames(arrests)= c("Statename")
arrests
df=merge(arrests,census)
colnames(df)=c("Statename","Murder","Assault","UrbanPop", "Rape","population","popover18", "percentover18")
df
