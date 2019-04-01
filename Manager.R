setwd("~/../Desktop/RPGManager/")
if(!("crayon" %in% installed.packages())){install.packages("crayon");library("crayon")}else{library("crayon")}
for(file in dir("Scripts/Independent/")){
  source(paste("Scripts/Independent/",file,sep=""))
}
for(file in dir("Scripts/Dependent/")){
  source(paste("Scripts/Dependent/",file,sep=""))
}
cat("Files Loaded Properly\n")
### Below is test code
# Run this Below code to see how this game works right now

