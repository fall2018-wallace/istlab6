

arrests<-USArrests


arrests=cbind(rownames(arrests),arrests)
colnames(arrests)= c("Statename")
arrests
df=merge(arrests,mycensus)
colnames(df)=c("Statename","Murder","Assault","UrbanPop", "Rape","population","popover18", "percentover18")
df
