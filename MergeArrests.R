
mycensus<-cleanCensus
arrests<-USArrests
arrest=cbind(rownames(arrests),arrests)
df<- merge(arrests,mycensus, )
