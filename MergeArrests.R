
mycensus<-cleanCensus
arrests<-USArrests
arrest=cbind(rownames(arrests),arrests)
colnames(arrests)=c("stateName")
df<-merge(cleanCensus,arrests,by = c( "stateName"))
