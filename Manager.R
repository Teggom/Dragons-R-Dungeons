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
{
Human <- Create_Functions[["Human"]]()

# Here are their stats
Print_Stats[["Human"]](Human)
writeLines("\nHere you are only level 1.")
writeLines("None of your stats are high enough to succeed...")
writeLines("")
# They encounter an event
R <- Basic_Event_List[[1]](Human)
#writeLines(R[[1]])


# They couldn't do anything so lets level them a bit
writeLines("\nLets try leveling you up a few times")
writeLines("Hopefully you will be strong enough to pass the Dexterity check")
writeLines("Try wiggling your hand under the rock!")
.a =readline(prompt = "Press enter to continue")
writeLines("")
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)

# Lets see those new stats 
#Print_Stats[["Human"]](Human)

# Try the event again
R <- Basic_Event_List[[1]](Human)
#writeLines(R[[1]])

# They should have had enough Dexterity to wiggle their hands under the rock
# However it would be easier to just push the rock away if they were strong enough
writeLines("\nSuccess! However it would be easier to push the rock aside...")
writeLines("More levels here we go!")
.a =readline(prompt="Press Enter to continue")
writeLines("")
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)
Human <- Level_Up_Actor[["Human"]](Human)

# Hopefully they rolled Strength above 18
#Print_Stats[["Human"]](Human)

# And run the event again
R <- Basic_Event_List[[1]](Human)
#writeLines(R[[1]])

writeLines("\nLets see the new stats as well.")
Print_Stats[["Human"]](Human)
}

