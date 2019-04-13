setwd("~/../Desktop/RPGManager/")
if(!("crayon" %in% installed.packages())){install.packages("crayon");library("crayon")}else{library("crayon")}
if(!("tcltk2" %in% installed.packages())){install.packages("tcltk2");library("tcltk2")}else{library("tcltk2")}
if(!("tkrplot" %in% installed.packages())){install.packages("tkrplot");library("tkrplot")}else{library("tkrplot")}
if(!("raster" %in% installed.packages())){install.packages("raster");library("raster")}else{library("raster")}
x <- 0
Win <- tktoplevel(background = "black")
but <- tk2button(Win, text = "Keyboard", width = -10, command = function(){})
Win$env$Button <- tk2button(Win, text = "Keyboard", width = -10, command = function(){})
tkbind(Win$env$Button, "<Key-1>", 
       function(){
         print("1")
       }
)
tkbind(Win$env$Button, "<Key-2>", 
       function(){
         print("2")
       }
)
tkpack(Win$env$Button, padx = 30, pady = 30)
Sys.sleep(4)
tkfocus(Win$env$Button)
# Key Input Here
tkdestroy(Win$env$Button)
## attach keys to subprocess and remove it?
Win <- tktoplevel(background = "black")
but <- tk2button(Win, text = "Keyboard", width = -10, command = function(){})
tkbind(but, "<Key-1>", 
       function(){
         print("1")
       }
)
tkbind(but, "<Key-2>", 
       function(){
         print("2")
       }
)
tkpack(but, padx = 30, pady = 30)
Sys.sleep(4)
tkfocus(but)
# Key Input Here
tkdestroy(but)