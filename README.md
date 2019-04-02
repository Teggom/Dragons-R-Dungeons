# Dragons-R-Dungeons
An in development text based RPG game written in R. 

VERSION: 1.0.0

HOW TO RUN:
set the working directory in Manager.R to wherever you pulled this repo to
open an R session and type source("Manager.R") once you are in the correct Directory

BACKSTORY:
My friend Phil (github.com/Kontari) started writing a civilization simulator in python. He wanted to capture the vast world generation in the game Dwarf Fortress, and make a game that just created a civilization simulator. I offered him lots of ideas and helped him out a bit in his project, and at some point realized I would like to make something similar. This lead to me beginning to brainstorm an idea for an R based game that is text based (Hopefully will have visuals one day), and can be added to easily enough. 

The core idea behind this game is event functions. If someone was given a job/quest to go deliver 100 pounds of cloth to a different city, there are event slots created. An example would be a town event, as the player leaves town. Several travel events as they move to the different city. Lastly one or more events in the other city as they attempt to find where they are delivering the cloth to and actually deliver it. Depending on what circumstances surround the player, different events might be selected to fill these slots. For example, it would be apparent that they player is traveling with a good to sell, and as such "Traveling Merchant" events would be added to the pool to select from. 

In this sense a module could be created to add a specific situation into the game. I could at some point choose to add a module for the player climbing into an abyss in the ground, and the entire game takes place on the way to the bottom. Different events would be lined up for each floor, and randomly selected as they player travels. This would cause different playthroughs to be different. I could even add something like the player finds themselves in New York City, and different events around that idea. 

This game is definitly still in progress and will be hopefully not something I drop after a while. I would love to see where this game goes and hopefully get it hosted officially by CRAN as a package to be downloaded by anyone running R. 
