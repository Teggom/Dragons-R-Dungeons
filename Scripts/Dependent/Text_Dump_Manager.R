# For things like character select, where there is a lot of text 
#  and I dont want it clogging up the WindowManager.R file
Text_Manager <- list()

.Character_Select_Vanity <- function(){
  Verbose_Print(3, "Adding Character_Select_Vanity")
  lines(c(9, 9, 30, 30, 9), c(2.5, 82.5, 82.5, 2.5, 2.5), col = "white")
  lines(c(8.7, 8.7, 30.3, 30.3, 8.7), c(2.2, 82.8, 82.8, 2.2, 2.2), col = "white")
  for(index in 1:15){
    lines(c(9,30), c(82.5-index*5, 82.5-index*5), col = "white")
  }
  lines(c(71, 71), c(82.5, 2.5), col = "white")
  lines(c(70.7, 70.7), c(82.8, 2.2), col = "white")
  lines(c(71, 152, 152, 71), c(82.5, 82.5, 2.5, 2.5), col = "white")
  lines(c(70.7, 152.3, 152.3, 70.7), c(82.8, 82.8, 2.2, 2.2), col = "white")
  lines(c(7))
  lines(c(71, 152), c(67.5, 67.5), col = "white")
  lines(c(71, 152), c(37, 37), col = "white")
  lines(c(71, 152, 152, 71), c(25, 25, 24.7, 24.7), col = "white")
  lines(c(129, 129), c(82.5, 25), col = "white")
}
Text_Manager[["Vanity_Character_Select"]] <- .Character_Select_Vanity

.Bard <- function(){
  Verbose_Print(3, "Bard Vanity")
  text(72, 75, "Level:")
  text(130, 75, "5")
  text(72, 70, "Race:")
  text(130, 70, "Human")
  text(72, 65, "Strength:")
  text(130, 65, "C", col = "orange")
  text(72, 60, "Dexterity:")
  text(130, 60, "C", col = "orange")
  text(72, 55, "Constitution:")
  text(130, 55, "C", col = "orange")
  text(72, 50, "Intelligence:")
  text(130, 50, "C", col = "orange")
  text(72, 45, "Wisdom:")
  text(130, 45, "C", col = "orange")
  text(72, 40, "Charisma:")
  text(130, 40, "B", col = "yellowgreen")
  text(72, 34, "Starting Gear:")
  text(130, 34, "A flute")
  text(72, 29, "Starting Spells:")
  text(130, 29, "Music")
  text(72, 20, "The Bard. First to sing a song of banter and")
  text(72, 15, "friendship. Last to start a fight and draw blood.")
  text(72, 10, "While average at everything, they have a lot of")
  text(72, 5, "unique and special tricks up their sleeve.")
}
Text_Manager[["Bard"]] <- .Bard

.Thief <- function(){
  Verbose_Print(3, "Thief Vanity")
  text(72, 75, "Level:")
  text(130, 75, "5")
  text(72, 70, "Race:")
  text(130, 70, "Human")
  text(72, 65, "Strength:")
  text(130, 65, "C", col = "orange")
  text(72, 60, "Dexterity:")
  text(130, 60, "A", col = "green")
  text(72, 55, "Constitution:")
  text(130, 55, "C", col = "orange")
  text(72, 50, "Intelligence:")
  text(130, 50, "C", col = "orange")
  text(72, 45, "Wisdom:")
  text(130, 45, "D", col = "red")
  text(72, 40, "Charisma:")
  text(130, 40, "C", col = "orange")
  text(72, 34, "Starting Gear:")
  text(130, 34, "Thief Garb")
  text(72, 29, "Starting Spells:")
  text(130, 29, "Sneaky Stuff")
  text(72, 20, "Thief! Shouts of anger follow their footsteps.")
  text(72, 15, "Always the first to reach for the treasure and")
  text(72, 10, "the last to fall asleep. Their life is beset by")
  text(72, 5, "blood and gold.")
}
Text_Manager[["Thief"]] <- .Thief


.Mage <- function(){
  Verbose_Print(3, "Mage Vanity")
  text(72, 75, "Level:")
  text(130, 75, "5")
  text(72, 70, "Race:")
  text(130, 70, "Human")
  text(72, 65, "Strength:")
  text(130, 65, "D", col = "red")
  text(72, 60, "Dexterity:")
  text(130, 60, "C", col = "orange")
  text(72, 55, "Constitution:")
  text(130, 55, "D", col = "red")
  text(72, 50, "Intelligence:")
  text(130, 50, "A", col = "green")
  text(72, 45, "Wisdom:")
  text(130, 45, "A", col = "green")
  text(72, 40, "Charisma:")
  text(130, 40, "D", col = "red")
  text(72, 34, "Starting Gear:")
  text(130, 34, "Mage Robes")
  text(72, 29, "Starting Spells:")
  text(130, 29, "Mage Paths")
  text(72, 20, "The mage. An intellectual creature with the ")
  text(72, 15, "power to manipulate the fundamental elements and")
  text(72, 10, "bend them to their will. If their skills do not")
  text(72, 5, "contain a solution, perhaps an arcane blast does.")
}
Text_Manager[["Mage"]] <- .Mage

.Warrior <- function(){
  Verbose_Print(3, "Warrior Vanity")
  text(72, 75, "Level:")
  text(130, 75, "5")
  text(72, 70, "Race:")
  text(130, 70, "Human")
  text(72, 65, "Strength:")
  text(130, 65, "A", col = "green")
  text(72, 60, "Dexterity:")
  text(130, 60, "C", col = "orange")
  text(72, 55, "Constitution:")
  text(130, 55, "A", col = "green")
  text(72, 50, "Intelligence:")
  text(130, 50, "D", col = "red")
  text(72, 45, "Wisdom:")
  text(130, 45, "D", col = "red")
  text(72, 40, "Charisma:")
  text(130, 40, "D", col = "red")
  text(72, 34, "Starting Gear:")
  text(130, 34, "Warrior Gear")
  text(72, 29, "Starting Spells:")
  text(130, 29, "Warrior Spells")
  text(72, 20, "The warrior. A powerful rippling ball of muscle.")
  text(72, 15, "With a sword in hand nothing can stand in his way.")
  text(72, 10, "The warrior will need to use their strength to")
  text(72, 5, "overcome the challenges that lie ahead.")
}
Text_Manager[["Warrior"]] <- .Warrior

.Main_Menu <- function(){
  Verbose_Print("Main Menu Vanity")
  text(x = 20, y = 80, "Dungeons `R` Dragons", cex = 3) 
  text(x = 30, y = 50, "[1] - Start")
  text(x = 30, y = 42, "[2] - Credits")
  text(x = 30, y = 34, "[3] - Quit")
  text(x = 100, y = 70, paste("Verson:", Game_Version))
}
Text_Manager[["Main_Menu"]] <- .Main_Menu

.Credits <- function(){
  Verbose_Print("Credits Vanity")
  text(x = 60, y = 80, "Credits", cex = 2.5)
  text(x = 20, y = 55, "Almost Everything:")
  text(x = 80, y = 55, "Stephen Kozak")
  text(x = 20, y = 48, "Ideas:")
  text(x = 80, y = 48, "Philip, Chett, Dan, Kayla")
  text(x = 20, y = 41, "Special Thanks:")
  text(x = 80, y = 41, "Ian B Page")
  text(x = 40, y = 30, "And thank `YOU` for playing!")
  text(x = 50, y = 10, "Press [1] to go back")
}
Text_Manager[["Credits"]] <- .Credits



.Switch_Menu <- function(){
  Verbose_Print("Switch Menu Vanity")
  lines(c(0,0,150,150,0), c(0,90,90,0,0), col = 'white')
  lines(c(-.3,-.3,150.3,150.3,-.3), c(-.3,90.3,90.3,-.3,-.3), col = 'white')
  text(75,96,"Character Menu", adj = c(.5,.5), cex = 2.5, col = "white")
  lines(c(18.5,18.5,18.8,18.8), c(0,90,90,0), col = "white")
  
  # Select
  text(1, 87.5, "Bag")
  text(1, 82.5, "Spells")
  text(1, 77.5, "Stats")
  text(1, 72.5, "Continue")
  text(1,67.5, "Save")
  text(1,62.5, "Quit")
  S_Index = WINDOWSTATE$Window_Variables$Select_Cursor_Spot
  y_lower = 90.4-S_Index*5
  y_upper = 94.3-S_Index*5
  lines(c(.5,.5,18,18,.5), c(y_lower,y_upper,y_upper,y_lower,y_lower),col = "white")
  
  # Bag
  if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 1){
    # Sort options
    text(25, 87.35, "[1]", col = {if(WINDOWSTATE$Window_Variables$Sort_Type=="1"){"yellow"}else{"grey"}})
    text(33, 87.35, "[2]", col = {if(WINDOWSTATE$Window_Variables$Sort_Type=="2"){"yellow"}else{"grey"}})
    text(41, 87.35, "[3]", col = {if(WINDOWSTATE$Window_Variables$Sort_Type=="3"){"yellow"}else{"grey"}})
    
    text(35, 82.5, {
      if(WINDOWSTATE$Window_Variables$Sort_Type=="1"){"Gear"}
      else if(WINDOWSTATE$Window_Variables$Sort_Type=="2"){"Consumables"}
      else if(WINDOWSTATE$Window_Variables$Sort_Type=="3"){"Key Items"}
    }, col = "white", adj = c(.5,NA))
    
    lines(c(50.2, 50.2, 50.5, 50.5), c(0,90,90,0), col = "white")
    lines(c(18.8, 50.2, 50.2, 18.8), c(80.3,80.3,80,80), col = "white")
    
    text(19.5, 77.5, {if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth==1){"[4] - Bottom"}else{"[4] - Page Up"}}, col = "darkgray")
    text(19.5, 2.5, {if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth==WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth){"[5] - Top"}else{"[4] - Page Down"}}, col = "darkgray")
    
    # Gear
    Character_Manager$Prime_Bag()
    
    for(line in 1:15){
      lines(c(18.8, 50.2), c(80-line*5, 80-line*5), col = "darkgray")
    }
    
    Bags = WINDOWSTATE$Window_Variables$Bag_Info$Bags
    #print(Bags)
    #print(WINDOWSTATE$Player$Actor$Items)
    #print(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type))
    C_Bag_Set = Bags[[as.numeric(WINDOWSTATE$Window_Variables$Sort_Type)]]
    #print(C_Bag_Set)
    #print(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth)
    Display_Bag = C_Bag_Set[[WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth]]
    if(length(Display_Bag)>0){
      for(each in 1:length(Display_Bag)){
        name = Display_Bag[[each]]
        if(nchar(name)>14){
           name = paste(substr(name, 1, 14), "...", sep = "")
        }
        text(19.5, 77.5-each*5, name)
      }
    } else {
      text(19, 72.5, "<Empty>", col = "grey")
    }
    # Item Stats

  }
  
  # Spells
  if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 2){
    
  }
  
  # Player Stats
  if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 3){
        
  }
}
Text_Manager[["Switch_Menu"]] <- .Switch_Menu