##Raster analysis=group
##Layer=vector
##Field = Field Layer
##Raster_layer=raster
##Output_table=output table

#required packages
require(raster)
require(rgdal)
library(dplyr)
#creating layers
R<-Raster_layer
poly<-Layer

#get some raster and vector information
resolution<-round(res(R), 0)
resolution<-resolution[1]*resolution[2]
rastername<-names(R)
#extract raster values to poygons
ext<-raster::extract(R, poly, method = 'simple', na.rm=TRUE)
names(ext)<-poly[[Field]]

ext<-lapply(ext, function(x) x[!is.na(x)])
ext<-ext[lapply(ext,length)>0]

tabFunc<-function(indx, extracted, poly, nome) {
dat<-as.data.frame(table(extracted[[indx]]))
dat$name<-poly[[nome]][[indx]]
return(dat)
}

tabs<-lapply(seq(ext), tabFunc, ext, poly, "")
names(tabs)<-names(ext)
tabs<-do.call("rbind",tabs)
names(tabs)<-c(rastername, "cell_count")
tabs[[rastername]]<-as.factor(tabs[[rastername]])
tabs$field<-row.names(tabs)
tabs$field<-as.factor(tabs$field)
tabs$field<-gsub("\\..","",tabs$field)
rownames(tabs)<-NULL
tabs$area_mq<-tabs$cell_count*resolution
tabs$area_ha<-round(tabs$area_mq/10000,2)
tabs<-group_by(tabs, field)%>%mutate(percent = area_mq/sum(area_mq)*100)
tabs1<-as.data.frame(tabs)
tabs1$percent<-round(tabs1$percent, 2)
colnames(tabs1)[3] <- Field
tabs1<-tabs1[c(1,3,2,4,5,6)]

Output_table<-tabs1

