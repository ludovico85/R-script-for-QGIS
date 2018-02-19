##Shapefile projections=group
##Input_folder=folder
##CRS_input=crs
##CRS_output=crs
##Output_folder=folder

require(raster)
require(rgdal)
setwd(Input_folder)
files<-list.files(getwd(), pattern=".shp", recursive=TRUE)

for (i in 1:length(files))
{
q<-readOGR(files[i])
crs(q)<-paste("+init=",CRS_input, sep="")
q<-spTransform(q, CRS(paste("+init=",CRS_output, sep="")))
writeOGR(q, layer=paste(gsub("^.*\\/", "", (gsub(".shp", "", files[i]))), sep = ""),Output_folder,driver="ESRI Shapefile")
}
