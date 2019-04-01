Calc <- list()
# used when asking for things such as rolls or bonuses

# Takes in a player and a skill
# Returns the modifier for a skill from Modif$General_Buff(value)
.Stat_To_Skill <- function(Player, Skill_Name){
  ### TODO
  return(Modif$General_Stats(13))
}
Calc$Stat_To_Skill <- .Stat_To_Skill

# Takes in a player, skill, WinValue, andd LowWin Boolean
# Lowwin means that the skill is something like burn
## in this case burn is from 0-5 and meeting that value is a pass
# If not Lowwin then it converts everything through modif
.Check_Passed_Event_Skill <- function(Player, Skill_Name, WinValue, Lowwin = F){
  # Lowwin
  if(Lowwin){
    Max = 0
    # Check Items
    ### Short
    for(item in Player$Actor$Active_Items$Short){
      Max = max(Max, Item_Manager$Get_Buff(item, Skill_Name))
    }
    ### Long
    for(item in Player$Actor$Active_Items$Long){
      Max = max(Max, Item_Manager$Get_Buff(item, Skill_Name))
    }
    
    # Check Spells
    ### Short
    for(spell in Player$Actor$Active_Spells$Short){
      Max = max(Max, Spell_Manager$Get_Buff(spell, Skill_Name))
    }
    ### Long
    for(spell in Player$Actor$Active_Spells$Long){
      Max = max(Max, Spell_Manager$Get_Buff(spell, Skill_Name))
    }
    
    # Check Win
    if(Max>=WinValue){
      return(T)
    }
    return(F)
  } else {
    # Get Skill Bonus
    Skill_Bonus <- Modif$Bonus_To_Skills(Player$Actor$Skills[[Skill_Name]][[1]])
    
    # Get Item Bonus
    Item_Max = 0
    ### Short
    for(item in Player$Actor$Active_Items$Short)
      Item_Max = max(Item_Max, Item_Manager$Get_Buff(item, Skill_Name))
    ### Long
    for(item in Player$Actor$Active_Items$Long)
      Item_Max = max(Item_Max, Item_Manager$Get_Buff(item, Skill_Name))
    
    # Get Gear Bonus
    Gear = c()
    for(gear in Player$Actor$Gear)
      if(gear != "")
        Gear = c(Gear, Modif$Bonus_To_Skills(Item_Manager$Get_Buff(gear, Stat)))
    
    # Get Spell Bonus
    Spell_Max = 0
    ### Short
    for(spell in Player$Actor$Active_Spells$Short)
      Spell_Max = max(Spell_Max, Spell_Manager$Get_Buff(spell, Skill_Name))
    ### Long
    for(spell in Player$Actor$Active_Spells$Long)
      Spell_Max = max(Spell_Max, Spell_Manager$Get_Buff(spell, Skill_Name))

    # Get Stat Bonus
    Stat_Bonus = Calc$Stat_To_Skill(Player, Skill_Name)
    
    # Get Luck Bonus 
    Roll = Calc$Roll(Player)
    
    Total = Stat_Bonus + 
      Modif$Bonus_To_Skills(Spell_Max) +
      Modif$Bonus_To_Skills(Item_Max) + 
      Roll +
      Skill_Bonus +
      sum(Gear)
      return(Total)
      if(Total >= WinValue){
        return(Total)
      } else {
        return(F)
      }
  }
}
Calc$SkillCheck <- .Check_Passed_Event_Skill




# Given a player and a Stat, return the value
# This also takes into account spell buffs and Items
# FOR USE WITH RAW STATS STRENGTH-LUCk
.Get_Stat_Roll <- function(Player, Stat){
  .Viable <- c("Strength", "Dexterity", "Intellignence", "Charisma", "Wisdom", "Endurance", "Luck")
  
  # Get Spell Bonuses
  MaxSpell = 0
  ### Short
  for(spell in Player$Actor$Active_Spells$Short)
    MaxSpell = max(Spell_Manager$Get_Buff(spell, Stat), MaxSpell)
  ### Long
  for(spell in Player$Actor$Active_Spells$Long)
    MaxSpell = max(Spell_Manager$Get_Buff(spell, Stat), MaxSpell)
  
  
  # Get Item Bonuses
  MaxItem = 0
  ### Short
  for(item in Player$Actor$Active_Items$Short)
    MaxItem = max(Item_Manager$Get_Buff(item, Stat), MaxItem)
  ### Long
  for(item in Player$Actor$Active_Items$Long)
    MaxItem = max(Item_Manager$Get_Buff(item, Stat), MaxItem)
  
  
  # Get Gear Bonuses
  Gear = c()
  for(gear in Player$Actor$Gear)
    if(gear!="")
      Gear = c(Gear, Modif$Bonus_To_Stats(Item_Manager$Get_Buff(gear, Stat)))
  
  # LUCK NOT CALCULATED HERE
  
  # Feed into Modif
  Total <- Player$Actor$Stats[[Stat]] + 
    Modif$Bonus_To_Stats(MaxItem) +
    Modif$Bonus_To_Stats(MaxSpell) + 
    sum(Gear) 
    
  
  # Return
  return(Modif$General_Stats(Total))
}
Calc$Stat_Roll <- .Get_Stat_Roll

# When making a roll, this is the bonus from luck
.Roll <- function(Player){
  return(sample(1:Player$Actor$Stats$Luck, 1))
}
Calc$Roll = .Roll

# When leveling up, this is the bonus to HP
.Health_Level_Up_Bonus <- function(Player){
  return(Modif$General_Stats(Player$Actor$Stats$Constitution))
}
Calc$Health_Bonus <- .Health_Level_Up_Bonus

# When leveling up, this is the bonus to MP
.Mana_Level_Up_Bonus <- function(Player){
  return(Modif$General_Stats((Player$Actor$Stats$Intelligence+Player$Actor$Stats$Wisdom)/2))
}
Calc$Mana_Bonus <- .Mana_Level_Up_Bonus