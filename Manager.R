setwd("~/../Desktop/RPGManager/")
if(!("crayon" %in% installed.packages())){install.packages("crayon");library("crayon")}else{library("crayon")}
if(!("tcltk2" %in% installed.packages())){install.packages("tcltk2");library("tcltk2")}else{library("tcltk2")}
if(!("tkrplot" %in% installed.packages())){install.packages("tkrplot");library("tkrplot")}else{library("tkrplot")}
if(!("raster" %in% installed.packages())){install.packages("raster");library("raster")}else{library("raster")}
for(file in dir("Scripts/Independent/")){
  source(paste("Scripts/Independent/",file,sep=""))
}
for(file in dir("Scripts/Dependent/")){
  source(paste("Scripts/Dependent/",file,sep=""))
}
cat("Files Loaded Properly\n")

# Currently working
#   Main Menu, Credits, Quit
#   Start Crashes the game
Game_Start()

# TODO: fix error on button imput > constant
# TODO: Fix up menu