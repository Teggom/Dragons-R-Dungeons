Character_Manager <- list()

# For use at the start of the game, overrides Adventure Class 
# Returns a Player object
.Make_Class <- function(Player, Class){
  newPlayer = Player
  newPlayer$Actor$General$Gold = 200
  newPlayer$Actor$Items = append(as.list(sample(Item_Manager$Items$Item.Name, 35)), as.list(rep("Rope", 20)))
  # CopyPaste
  if(Class == ""){
    # Set Class
    newPlayer$Actor$General$Class = Class
    
    # Set Level
    newPlayer$Actor$General$Level = 5
    
    # Set Stats with a Roll
    newPlayer$Actor$Stats$Strength = 13 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Dexterity = 13 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Constitution = 13 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Intelligence = 13 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Wisdom = 13 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Charisma = 13 + sum(sample(1:6, 1, T))
    
    # Set HP/MP
    newPlayer$Actor$Stats$Max_Health = 15 + 4*Calc$Health_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Health = newPlayer$Actor$Stats$Max_Health
    
    newPlayer$Actor$Stats$Max_Mana = 15 + 4*Calc$Mana_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Mana = newPlayer$Actor$Stats$Max_Mana
    
    # Give Gear
    
    # Give Items
    
    # Give Spells/Magic Classes
    
    return(newPlayer)
  }
  if(Class == "Warrior"){
    # Set Class
    newPlayer$Actor$General$Class = Class
    
    # Set Level
    newPlayer$Actor$General$Level = 5
    
    # Set Stats with a Roll
    newPlayer$Actor$Stats$Strength = 13 + sum(sample(1:6, 4, T))
    newPlayer$Actor$Stats$Dexterity = 12 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Constitution = 13 + sum(sample(1:6, 4, T))
    newPlayer$Actor$Stats$Intelligence = 12 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Wisdom = 10 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Charisma = 13 + sum(sample(1:6, 1, T))
    
    # Set HP/MP
    newPlayer$Actor$Stats$Max_Health = 30 + 4*Calc$Health_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Health = newPlayer$Actor$Stats$Max_Health
    
    newPlayer$Actor$Stats$Max_Mana = 10 + 4*Calc$Mana_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Mana = newPlayer$Actor$Stats$Max_Mana
    
    # Give Gear
    
    # Give Items
    
    # Give Spells/Magic Classes
    
    return(newPlayer)
  }
  
  if(Class == "Mage"){
    # Set Class
    newPlayer$Actor$General$Class = Class
    
    # Set Level
    newPlayer$Actor$General$Level = 5
    
    # Set Stats with a Roll
    newPlayer$Actor$Stats$Strength = 10 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Dexterity = 12 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Constitution = 12 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Intelligence = 13 + sum(sample(1:6, 4, T))
    newPlayer$Actor$Stats$Wisdom = 13 + sum(sample(1:6, 4, T))
    newPlayer$Actor$Stats$Charisma = 13 + sum(sample(1:6, 1, T))
    
    # Set HP/MP
    newPlayer$Actor$Stats$Max_Health = 20 + 4*Calc$Health_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Health = newPlayer$Actor$Stats$Max_Health
    
    newPlayer$Actor$Stats$Max_Mana = 25 + 4*Calc$Mana_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Mana = newPlayer$Actor$Stats$Max_Mana
    
    # Give Gear
    
    # Give Items
    
    # Give Spells/Magic Classes
    
    return(newPlayer)
  }
  if(Class == "Thief"){
    # Set Class
    newPlayer$Actor$General$Class = Class
    
    # Set Level
    newPlayer$Actor$General$Level = 5
    
    # Set Stats with a Roll
    newPlayer$Actor$Stats$Strength = 13 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Dexterity = 13 + sum(sample(1:6, 4, T))
    newPlayer$Actor$Stats$Constitution = 13 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Intelligence = 13 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Wisdom = 13 + sum(sample(1:6, 1, T))
    newPlayer$Actor$Stats$Charisma = 13 + sum(sample(1:6, 2, T))
    
    # Set HP/MP
    newPlayer$Actor$Stats$Max_Health = 15 + 4*Calc$Health_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Health = newPlayer$Actor$Stats$Max_Health
    
    newPlayer$Actor$Stats$Max_Mana = 15 + 4*Calc$Mana_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Mana = newPlayer$Actor$Stats$Max_Mana
    
    # Give Gear
    
    # Give Items
    
    # Give Spells/Magic Classes
    return(newPlayer)
  }
  if(Class == "Bard"){
    # Set Class
    newPlayer$Actor$General$Class = Class
    
    # Set Level
    newPlayer$Actor$General$Level = 5
    
    # Set Stats with a Roll
    newPlayer$Actor$Stats$Strength = 11 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Dexterity = 11 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Constitution = 11 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Intelligence = 11 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Wisdom = 11 + sum(sample(1:6, 2, T))
    newPlayer$Actor$Stats$Charisma = 11 + sum(sample(1:6, 3, T))
    
    # Set HP/MP
    newPlayer$Actor$Stats$Max_Health = 18 + 4*Calc$Health_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Health = newPlayer$Actor$Stats$Max_Health
    
    newPlayer$Actor$Stats$Max_Mana = 18 + 4*Calc$Mana_Bonus(newPlayer)
    newPlayer$Actor$Stats$Cur_Mana = newPlayer$Actor$Stats$Max_Mana
    
    # Give Gear
    
    # Give Items
    
    # Give Spells/Magic Classes
    
    return(newPlayer)
  }
}
Character_Manager[["Set_Class"]] <- .Make_Class


# Breaks players inv into the 3 sub bags of size default
# they become lists of lists
.Break_Up_Bag_For_Menu <- function(default = 14){
  Character_Manager$Sort_Bag()
  Gear = Character_Manager$Get_Gear()
  Consumables = Character_Manager$Get_Consumables()
  Key = Character_Manager$Get_Key_Items()
  
  # Get gear depth data as it's default
  Gear_Depth = max(1,ceiling(length(Gear)/default))
  Consumable_Depth = max(1,ceiling(length(Consumables)/default))
  Key_Depth = max(1,ceiling(length(Key)/default))
  WINDOWSTATE$Window_Variables$Bag_Info$Bags <<- list("Gear" = list(), "Consumables" = list(), "Key" = list())
  # populates Windowstate variables
  while(length(Gear)>0){
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Gear <<- append(
      WINDOWSTATE$Window_Variables$Bag_Info$Bags$Gear, 
      list(Gear[1:min(default, length(Gear))])
    )
    # Removes from list
    Gear[1:min(default, length(Gear))] <- NULL
  }
  while(length(Consumables)>0){
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Consumables <<- append(
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Consumables, 
    list(Consumables[1:min(default, length(Consumables))])
    )
    # Removes from list
    Consumables[1:min(default, length(Consumables))] <- NULL
  }
  while(length(Key)>0){
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Key <<- append(
      WINDOWSTATE$Window_Variables$Bag_Info$Bags$Key, 
      list(Key[1:min(default, length(Key))])
    )
    # Removes from list
    Key[1:min(default, length(Key))] <- NULL
  }
  # If a bag is empty it needs to at least have 1 item
  if(length(WINDOWSTATE$Window_Variables$Bag_Info$Bags$Gear)==0){
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Gear <<- list(list())
  }
  if(length(WINDOWSTATE$Window_Variables$Bag_Info$Bags$Consumables)==0){
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Consumables <<- list(list())
  }
  if(length(WINDOWSTATE$Window_Variables$Bag_Info$Bags$Key)==0){
    WINDOWSTATE$Window_Variables$Bag_Info$Bags$Key <<- list(list())
  }
}
Character_Manager[["Prime_Bag"]] <- .Break_Up_Bag_For_Menu

# Sorts the player's bag and reassigns it to them
.Get_Sorted_Bag <- function(){
  # Sorts by (Gear/Consumable/Key)->(Head/../Feet|ConsumableType)->Tier
  Gear <- list()
  Consumable <- list()
  Key <- list()
  # Not using each funtion to reduce time iterating through list
  for(item in WINDOWSTATE$Player$Actor$Items){
    if(Item_Manager$Get_Type(item)=="Gear"){
      Gear <- append(Gear, item)
    } else if(Item_Manager$Get_Type(item)=="Consumable"){
      Consumable <- append(Consumable, item)
    } else {
      Key <- append(Key, item)
    }
  }
  Gear <- Character_Manager$Sort_Gear(Gear)
  Consumable <- Character_Manager$Sort_Consumables(Consumable)
  Key <- Character_Manager$Sort_Key(Key)
  
  Append <- append(Gear, Consumable)
  WINDOWSTATE$Player$Actor$Items <<- append(Append, Key)
}
Character_Manager[["Sort_Bag"]] <- .Get_Sorted_Bag





.Sort_Gear <- function(Gear_List){
  Return <- list("Head"=list(),"Neck"=list(),"Back"=list(),"Chest"=list(),
                 "Arms"=list(),"Hand"=list(),"Belt"=list(),"Legs"=list(),
                 "Feet"=list(),"Accessory"=list())
  for(item in Gear_List){
    Slot = Item_Manager$Get_Slot(item)
    Return[[Slot]] <- append(Return[[Slot]],item)
  }
  Flat_Return <- list()
  for(slot in names(Return)){
    Flat_Return <- append(Flat_Return, Character_Manager$Tier_Sort(unlist(Return[[slot]])))
  }
  return(Flat_Return)
}
Character_Manager[["Sort_Gear"]] <- .Sort_Gear

# Call after sort to ensure it's gotten sorted
.Get_Gear <- function(){
  Gear <- list()
  for(item in WINDOWSTATE$Player$Actor$Items){
    if(Item_Manager$Get_Type(item) == "Gear"){
      Gear <- append(Gear, item)
    }
  }
  return(Gear)
}
Character_Manager[["Get_Gear"]] <- .Get_Gear

# Call after sort to ensure it's sorted
.Get_Consumables <- function(){
  Consumables <- list()
  for(item in WINDOWSTATE$Player$Actor$Items){
    if(Item_Manager$Get_Type(item)== "Consumable"){
      Consumables <- append(Consumables, item)
    }
  }
  return(Consumables)
}
Character_Manager[["Get_Consumables"]] <- .Get_Consumables

# call after sort to ensure it's sorted
.Get_Key <- function(){
  Key <- list()
  for(item in WINDOWSTATE$Player$Actor$Items){
    if(Item_Manager$Get_Type(item)=="Key"){
      Key <- append(Key, item)
    }
  }
  return(Key)
}
Character_Manager[["Get_Key_Items"]] <- .Get_Key

.Tier_Sort <- function(Item_list){
  Return <- list("0"=list(),"1"=list(),"2"=list(),"3"=list(),"4"=list(),"5"=list(),"6"=list())
  for(item in Item_list){
    Tier = as.character(Item_Manager$Get_Tier(item))
    Return[[Tier]] <- append(Return[[Tier]], item)
  }
  Flat_Return <- list()
  for(tier in names(Return)){
    Flat_Return <- append(Flat_Return, sort(unlist(Return[[tier]])))
  }
  return(Flat_Return)
}
Character_Manager[["Tier_Sort"]] <- .Tier_Sort

.Sort_Key <- function(Key_List){
  #TODO see if I can make this better
  return(Character_Manager$Tier_Sort(Key_List))
}
Character_Manager[["Sort_Key"]] <- .Sort_Key

.Sort_Consumables <- function(Consumables_List){
  #TODO Implement Consumables Sort
  return(Consumables_List)
}
Character_Manager[["Sort_Consumables"]] <- .Sort_Consumables
