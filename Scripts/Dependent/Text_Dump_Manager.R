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
    
    text(20, 82.5, {
      if(WINDOWSTATE$Window_Variables$Sort_Type=="1"){"Gear"}
      else if(WINDOWSTATE$Window_Variables$Sort_Type=="2"){"Consumables"}
      else if(WINDOWSTATE$Window_Variables$Sort_Type=="3"){"Key Items"}
    }, col = "white", adj = c(0,NA))
    text(50, 82.5, paste(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth, 
                         WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth, sep = "/"), col = "white", adj = c(1, NA))
    lines(c(50.2, 50.2, 50.4, 50.4), c(0,90,90,0), col = "white")
    lines(c(18.8, 50.2, 50.2, 18.8), c(80.2,80.2,80,80), col = "white")
    
    text(19.5, 77.5, {if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth==1){"[4] - <Nothing>"}else{"[4] - Page Up"}}, col = "darkgray")
    text(19.5, 2.5, {if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth==WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth){"[5] - <Nothing>"}else{"[5] - Page Down"}}, col = "darkgray")
    
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
        # print bag contents, red if selected
        text(19.5, 77.5-each*5, name, col = {
          if(WINDOWSTATE$Window_Variables$Bag_Cursor_Spot==each){
            if(WINDOWSTATE$Window_Variables$Cursor_Spot=="Bag"){
              "red"
            } else {
              "white"
            }
          } else {
            if(WINDOWSTATE$Window_Variables$Cursor_Spot!="Bag"){
              "gray16"
            } else {
              "white"
            }
          }
        })
      }
    } else {
      text(19, 72.5, "<Empty>", col = "grey")
    }
    
    # Player Equipment menu
    text(51.2, 87.5, "Player", cex = 1.3)
    text(51.2, 82.5, "Equipment", cex = 1.3)
    Player_Gear_Spots <- c("Head", "Neck", "Back", "Chest", "Arms", "Hand (L)", "Hand (R)", "Belt", "Legs", "Feet", "Accessory 1", "Accessory 2")
    for(spot in 1:length(Player_Gear_Spots)){
      text(51.2, 82.5-spot*5, Player_Gear_Spots[spot],
          col = {
            if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Equip"){
             if(WINDOWSTATE$Window_Variables$Equip_Cursor_Spot == spot){
               "red"
              } else {
               "white"
              } 
            } else {
              if(WINDOWSTATE$Window_Variables$Equip_Cursor_Spot == spot){
               "white"
              } else {
               "grey16"
              }
            }
          }
          )
      lines(c(50.5, 74), c(80-spot*5, 80-spot*5), col = "grey")
    }
    lines(c(74, 74, 74.3, 74.3), c(0, 90,90,0), col = "white")
    lines(c(50.5, 74, 74, 50.5), c(80.2, 80.2, 80, 80), col = "white")
    
    
    
    
    # Item Stats
    if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Select"){
      if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 1){
      # Select: Bag
        text(112.15, 80, "A fun menu", adj = c(NA, .5))
        text(112.15, 75, "where you can", adj = c(NA, .5))
        text(112.15, 70, "see your gear!", adj = c(NA, .5))
      } else if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 2){
      # Select: Spells
        
      } else if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 3){
      # Select: Stats
        
      } else if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 4){
      # Select: Continue
        text(112.15, 75, "Continue to next event!", adj = c(NA, .5))
      } else if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 5){
      # Select: Save
        text(112.15, 75, "Save your game!", adj = c(NA, .5))
      } else if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 6){
      # Select: Quit
        text(112.15, 75, "Quit the game.", adj = c(NA, .5))
      }
      
    } else if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Bag" && WINDOWSTATE$Window_Variables$Sort_Type == "1"){
      # Select: Bag: Sort_1
      lines(c(74.3, 150, 150, 74.3), c(80.2, 80.2, 80, 80), col = "white")
      lines(c(74.3, 112.15), c(65, 65), col = "grey")
      lines(c(74.3, 112.15), c(75, 75), col = "grey")
      lines(c(112.15, 112.15), c(80, 0), col = "grey")
      lines(c(74.3, 112.15), c(30, 30), col = "grey")
      text(75.3, 87, "Name:")
      text(75.3, 83, "Tier:")
      text(75.3, 77.5, "Slot:")
      text(75.3, 72.5, "Attack:")
      text(75.3, 67.5, "Defense:")
      text(75.3, 62.5, "Weapon Type: ")
      text(75.3, 57.5, "Weight:")
      text(75.3, 52.5, "Cost:")
      text(75.3, 47.5, "Durability:")
      text(75.3, 27.5, "Info:")
      ## TODO: Print Stats
      Selected_Item <- WINDOWSTATE$Window_Variables$Bag_Info$Bags[[
        # which sort type results in which bag
        switch(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type), "Gear", "Consumables", "Key")
      ]][[
        # which selection from the bag are we seeing (Groupings of 14ish)
        WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth
      ]][
        # which index in that selected bag are we at
        WINDOWSTATE$Window_Variables$Bag_Cursor_Spot
      ][[1]] # and [[1]] to devaluate the list
      text(149, 87, Selected_Item, adj = c(1,NA))
      text(149, 83, Item_Manager$Get_Tier(Selected_Item), adj = c(1, NA))
      text(111.15, 77.5, Item_Manager$Get_Slot(Selected_Item), adj = c(1, NA))
      text(111.15, 72.5, Item_Manager$Get_Attack(Selected_Item), adj = c(1, NA))
      text(111.15, 67.5, Item_Manager$Get_Defense(Selected_Item), adj = c(1, NA))
      text(111.15, 62.5, Item_Manager$Get_Weapon_Type(Selected_Item), adj = c(1, NA))
      text(111.15, 57.5, Item_Manager$Get_Weight(Selected_Item), adj = c(1, NA))
      text(111.15, 52.5, Item_Manager$Get_Cost(Selected_Item), adj = c(1, NA))
      text(111.15, 47.5, Item_Manager$Get_Durability(Selected_Item), adj = c(1, NA))
      for(index in 1:length(Item_Manager$Prime_Text(Selected_Item))){
        text(75.3, 27.5-index*5, Item_Manager$Prime_Text(Selected_Item)[[index]])
      }
      # show boosts
      Boosts <- Item_Manager$Get_Boosts(Selected_Item)
      if(length(Boosts)>0){
        for(B_index in 1:length(Boosts)){
          text(113.15, 82.5-B_index*5, Boosts[[B_index]][1])
          text(149, 82.5-B_index*5, Boosts[[B_index]][[2]], adj = c(1, NA))
        }
      } else {
        text(113.15, 77.5, "<No Boosts>", col = "grey16")
      }
    } else if(WINDOWSTATE$Window_Variables$Cursor_Spot=="Equip"){
    # Select: Bag: Equip
      text(75.3, 87, "Best Slot?")
      text(75.3, 83, "Efficiency:")
      
      # get current slot selected
      Selected_Slot <- switch(WINDOWSTATE$Window_Variables$Equip_Cursor_Spot,
                                  "Head", "Neck", "Back", "Chest", "Arms",
                                  "Hand (L)", "Hand (R)", 
                                  "Belt", "Legs", "Feet",
                                  "Accessory 1", "Accessory 2")
      # get current gear slot
      Selected_Item <- WINDOWSTATE$Window_Variables$Bag_Info$Bags[[
        # which sort type results in which bag
        switch(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type), "Gear", "Consumables", "Key")
        ]][[
          # which selection from the bag are we seeing (Groupings of 14ish)
          WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth
        ]][
          # which index in that selected bag are we at
          WINDOWSTATE$Window_Variables$Bag_Cursor_Spot
        ][[1]] # and [[1]] to devaluate the list
      # efficiency is multipliled by all values of the item. 
      # if the item is in the correct slot, it yields full value
      # otherwise it yields reduced value
      # weight is not effected by this
      # Non integer numbers are floored
      efficiency = 0
      if(grepl(Item_Manager$Get_Slot(Selected_Item), Selected_Slot)){
        text(149,87,"Yes", col = "green", adj = c(1,NA))
        text(149,83,"100%", col = "lightgreen", adj = c(1,NA))
        efficiency = 1
      } else {
        text(149,87,"No", col = "red", adj = c(1, NA))
        text(149,83,"50%", col = "darksalmon", adj = c(1,NA))
        efficiency = .5
      }
      #get currently equip gear 
      Current_Gear <- WINDOWSTATE$Player$Actor$Gear[[WINDOWSTATE$Window_Variables$Equip_Cursor_Spot]]
      
      Effs <- Character_Manager$Get_Efficiency()
      
      lines(c(74.3, 150, 150, 74.3), c(80.2, 80.2, 80, 80), col = "white")
      lines(c(112.15, 112.15), c(80, 0), col = "grey")
      lines(c(74.3,150), c(70,70), col = "grey")
      text(75.3, 77.5, "Attack:")
      text(75.3, 72.5, "Defense:")
      text(113.15, 77.5, "Weight:")
      text(113.15, 72.5, "Tier:")      
      if(Current_Gear == ""){
        # if no gear worn, set as 0 and increase
        text(111.15, 77.5, paste("0", floor(efficiency*as.numeric(
          Item_Manager$Get_Attack(Selected_Item)
        )), sep = " -> "), adj = c(1, NA),
        col = {if(floor(efficiency*as.numeric(Item_Manager$Get_Attack(Selected_Item)))==0){
          "grey30"
        } else {
          "green"
        }})
        text(111.15, 72.5, paste("0", floor(efficiency*as.numeric(
          Item_Manager$Get_Defense(Selected_Item)
        )), sep = " -> "), adj = c(1, NA),
        col = {if(floor(efficiency*as.numeric(Item_Manager$Get_Defense(Selected_Item)))==0){
          "grey30"
        } else {
          "green"
        }})
        text(149, 77.5, paste("0", floor(as.numeric(
          Item_Manager$Get_Weight(Selected_Item)
        )), sep = " -> "), adj = c(1, NA),
        col = {if(floor(as.numeric(Item_Manager$Get_Weight(Selected_Item)))==0){
          "grey30"
        } else {
          "red"
        }})
        text(149, 72.5, paste("0", floor(as.numeric(
          Item_Manager$Get_Tier(Selected_Item)
        )), sep = " -> "), adj = c(1, NA),
        col = {if(floor(as.numeric(Item_Manager$Get_Tier(Selected_Item)))==0){
          "grey30"
        } else {
          "green"
        }})
        # Boosts
        NBuffs <- Item_Manager$Get_Boosts_Int(Selected_Item)
        zerod_values <- 0
        if(length(NBuffs)>0){
          for(boost in 1:length(NBuffs)){
            if(floor(as.numeric(NBuffs[[boost]][2])*efficiency)>0){
              char <- switch(floor(as.numeric(NBuffs[[boost]][2])*efficiency), "D", "C", "B", "A", "S")
              text(113.15, 72.5-boost*5+zerod_values*5, paste("+", as.character(NBuffs[[boost]][1]),sep=""), col = "green")
              text(149, 72.5-boost*5+zerod_values*5, char, col="green",adj=c(1,NA))
            } else {
              zerod_values <- zerod_values + 1
            }
          }
        }
      } else {
        # if current gear is worn, show change
        
      }
      
      
      
    } else if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Bag" && WINDOWSTATE$Window_Variables$Sort_Type == "2"){
    # Select: Bag: Sort_2
    } else if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Bag" && WINDOWSTATE$Window_Variables$Sort_Type == "3"){
    # Select: Bag: Sort_3
    } else if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Spells"){
    # Select: Spells
    }
    
    
  }
  
  # Spells
  if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 2){
    
  }
  
  # Player Stats
  if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot == 3){
        
  }
}
Text_Manager[["Switch_Menu"]] <- .Switch_Menu