# R-script-for-QGIS
A series of R script for QGIS 

R must be installed on your PC. The scripts use external R libraries (i.e., rgdal, raster, rgeos, ....). The libraries must be installed before running the code.

Download and install R-3.4.3 from the R Project for Statistical Computing website.https://www.r-project.org/
Once installed, run R using the shortcut created on the Windows Desktop or Start Menu.

To install required libraries, run the following commands (copy and paste):
install.packages("<br>PACKAGE NAME</br>")

Example
install.packages("raster")

To activate R script from QGIS please click on the activate button under Rscript menu R in the Processing Options and select the correct R folder.

<a href="http://it.tinypic.com?ref=jrp6zc" target="_blank"><img src="http://i67.tinypic.com/jrp6zc.jpg" border="0" alt="Image and video hosting by TinyPic"></a>

list fo script

Define and projection.rsx #The script allows to define and project several shapefiles stored in folder and subfolders
