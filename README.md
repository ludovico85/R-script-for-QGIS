# R-script-for-QGIS
A series of R scripts for QGIS 

R must be installed on your PC. The scripts use external R libraries (i.e., rgdal, raster, rgeos, ....). The libraries must be installed before running the code.

Download and install R-3.4.3 from the R Project for Statistical Computing website: https://www.r-project.org/

Once installed, run R using the shortcut created on the Windows Desktop or Start Menu.

To install required libraries, run the following commands (copy and paste):

install.packages("<b>PACKAGE NAME</b>")

Example:<br>
install.packages("raster")

<b>IMPORTANT!</b>
Please check the required packages for each script in the <b>List of scripts</b>

To activate R script from QGIS please click on the activate button under Rscript menu R, in the Processing Options and select the correct R folder.

<a href="http://it.tinypic.com?ref=jrp6zc" target="_blank"><img src="http://i67.tinypic.com/jrp6zc.jpg" border="0" alt="Image and video hosting by TinyPic"></a>

Copy and paste the script (.rsx) and the help file (sx.help) in the Rscript folder

C:\Users\.qgis2\processing\rscripts

<a href="http://it.tinypic.com?ref=fu9stj" target="_blank"><img src="http://i64.tinypic.com/fu9stj.jpg" border="0" alt="Image and video hosting by TinyPic"></a>

<b>List of scripts</b>
<ul>
<li><font color="red">Define and projection.rsx</font> #The script allows to define and project several shapefiles stored in folder and subfolders (required packages: raster, rgdal)</li>
<li><font color="red">Zonal statistics for categorical raster.rsx</font> #The script allows to calculate zonal statistics for categorical raster (required packages: raster, rgdal, dplyr)</li>
</ul>
