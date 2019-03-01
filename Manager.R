setwd("~/../Desktop/RPGManager/")
for(file in dir("Scripts/Independant/")){
  source(paste("Scripts/Independant/",file,sep=""))
}
for(file in dir("Scripts/Dependant/")){
  source(paste("Scripts/Dependant/",file,sep=""))
}

### Below is test code
# Run this Below code to see how this game works right now

# Here is our level 1 human adventurer
Human <- Create_Functions[["Human"]]()

# Here are their stats
Print_Stats[["Human"]](Human)

# They encounter an event
R <- Basic_Event_List[[1]](Human)
writeLines(R[[1]])

# They couldn't do anything so lets level them a bit
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)

# Lets see those new stats 
Print_Stats[["Human"]](Human)

# Try the event again
R <- Basic_Event_List[[1]](Human)
writeLines(R[[1]])

# They should have had enough Dexterity to wiggle their hands under the rock
# However it would be easier to just push the rock away if they were strong enough
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)

# Hopefully they rolled Strength above 18
Print_Stats[["Human"]](Human)

# And run the event again
R <- Basic_Event_List[[1]](Human)
writeLines(R[[1]])

