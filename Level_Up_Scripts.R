Level_Up_Actor <- list()

.Human_Function <- function(Human){
  new = Human
  # Adventurer
  if(Human[["Actor"]][["Stats"]][["Class"]]=="Adventurer"){
    # Strength
    new[["Actor"]][["Stats"]][["Strength"]] = 
      new[["Actor"]][["Stats"]][["Strength"]] + 
      sample(x = (2+floor(new[["Actor"]][["Stats"]][["Level"]]/30)):(4+ceiling(new[["Actor"]][["Stats"]][["Level"]]/10)), size = 1)
    # Dexterity
    new[["Actor"]][["Stats"]][["Dexterity"]] =
      new[["Actor"]][["Stats"]][["Dexterity"]] + 
      sample(x = (2+floor(new[["Actor"]][["Stats"]][["Level"]]/30)):(4+ceiling(new[["Actor"]][["Stats"]][["Level"]]/10)), size = 1)
    # Intelligence
    new[["Actor"]][["Stats"]][["Intelligence"]] =
      new[["Actor"]][["Stats"]][["Intelligence"]] + 
      sample(x = (2+floor(new[["Actor"]][["Stats"]][["Level"]]/30)):(4+ceiling(new[["Actor"]][["Stats"]][["Level"]]/10)), size = 1)
    # Speed
    new[["Actor"]][["Stats"]][["Speed"]] =
      new[["Actor"]][["Stats"]][["Speed"]] + 
      sample(x = (2+floor(new[["Actor"]][["Stats"]][["Level"]]/30)):(4+ceiling(new[["Actor"]][["Stats"]][["Level"]]/10)), size = 1)
    # Health
    new[["Actor"]][["Stats"]][["Health"]] =
      new[["Actor"]][["Stats"]][["Health"]] + 
      sample(x = (4+floor(new[["Actor"]][["Stats"]][["Level"]]/40)):(5+ceiling(new[["Actor"]][["Stats"]][["Level"]]/30)), size = 1)
    # Mana
    new[["Actor"]][["Stats"]][["Mana"]] =
      new[["Actor"]][["Stats"]][["Mana"]] + 
      sample(x = (1+floor(new[["Actor"]][["Stats"]][["Level"]]/50)):(2+ceiling(new[["Actor"]][["Stats"]][["Level"]]/50)), size = 1)
    new[["Actor"]][["Stats"]][["Current_Health"]] = new[["Actor"]][["Stats"]][["Health"]]
    new[["Actor"]][["Stats"]][["Current_Mana"]] = new[["Actor"]][["Stats"]][["Mana"]]
  }
  new[["Actor"]][["Stats"]][["Level"]] = new[["Actor"]][["Stats"]][["Level"]]+1
  return(new)
}

Level_Up_Actor[["Human"]] <- .Human_Function


