setwd("~/../Desktop/RPGManager/")
if(!("crayon" %in% installed.packages())){install.packages("crayon");library("crayon")}else{library("crayon")}
if(!("tcltk2" %in% installed.packages())){install.packages("tcltk2");library("tcltk2")}else{library("tcltk2")}
if(!("tkrplot" %in% installed.packages())){install.packages("tkrplot");library("tkrplot")}else{library("tkrplot")}
if(!("raster" %in% installed.packages())){install.packages("raster");library("raster")}else{library("raster")}

Game_Version <- "1.0.3"
# Verbose Level 0->5
# Level 0: Nothing is kept, no file is created
# Level 1: Makes a note of key presses
# Level 2: Records what is being interacted with and where we are in the menus
# Level 3: Records function calls 
# Level 4: Records steps in function calls
# Level 5: For specific debugging (Should be cleaned up after)
# Toggling this causes things to be printed to a file. 

### IMPORTANT: VERBOSITY MUST BE KEPT AT 4 RIGHT NOW TO PREVENT A BUG
Verbosity <- 4
if(Verbosity >= 0){
  # Creates the next file for this version
  # Format:   "Game_Version-Log_Number.txt
  logs <- dir("Logs")[grepl(Game_Version, dir("Logs"))]
  Log_Numbers <- gsub(paste(Game_Version, "_", sep = ""), "", gsub("\\.txt", "", logs))
  This_Iteration <- length(Log_Numbers)+1
  File_Name <- paste("Logs/",Game_Version, "_", This_Iteration, ".txt", sep = "")
  file.create(File_Name)
  Verbose_Print <- function(Req_Level = 0, Text = ""){
    if(Verbosity >= Req_Level){
      write(paste(paste(rep("\t", Req_Level-1), collapse = ""),Text, sep = ""), file = File_Name, append = T)
    }
  }
  Verbose_Print(1,paste("Created Log: ", File_Name))
  Verbose_Print(1,paste("Verbosity:   ", Verbosity))
  # for your privacy, this does not track any user information
  for(Data in names(Sys.info())){
    if(!(Data %in% c("login", "user", "effective_user", "nodename"))){
      Verbose_Print(1,paste(Data, as.character(Sys.info()[Data])))
    }
  }
}
for(file in dir("Scripts/Independent/")){
  source(paste("Scripts/Independent/",file,sep=""))
}
for(file in dir("Scripts/Dependent/")){
  source(paste("Scripts/Dependent/",file,sep=""))
}
cat("Files Loaded Properly\n")



Game_Start()

# TODO: fix error on button imput > constant
# TODO: Fix up menu