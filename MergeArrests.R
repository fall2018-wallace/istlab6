

arrests<-USArrests
arrests=cbind(rownames(arrests),arrests)
colnames(arrests)=c("stateName")
df<-merge(mycensus,arrests,by = c( "stateName"))
