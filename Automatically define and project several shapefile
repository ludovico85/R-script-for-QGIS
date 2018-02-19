##Shapefile projections=group
##Input folder=folder
##CRS input=crs
##CRS output=crs
##Output folder=folder

require(raster)
require(rgdal)
setwd(Input folder)
files<-list.files(getwd(), pattern=".shp", recursive=TRUE)

for (i in 1:length(files))
{
q<-readOGR(files[i])
crs(q)<-paste("+init=",CRS input, sep="")
q<-spTransform(q, CRS(paste("+init=",CRS output, sep="")))
writeOGR(q, layer=paste(gsub("^.*\\/", "", (gsub(".shp", "", files[i]))), sep = ""),Output folder,driver="ESRI Shapefile")
}
