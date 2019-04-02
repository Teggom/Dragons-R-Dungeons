Character_Manager <- list()

# For use at the start of the game, overrides Adventure Class 
# Returns a Player object
.Make_Class <- function(Player, Class){
  newPlayer = Player
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