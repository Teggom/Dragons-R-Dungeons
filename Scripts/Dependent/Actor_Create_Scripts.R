
Create_Functions <- list()

# Move to main
Entity_IDs <- c()

#Basic Naming purposes


### human
.Create_Player <- function(){
  ID = length(Entity_IDs)
  Entity_IDs <<- c(Entity_IDs, ID)
  ret <- list(
    "Actor" = list(
      "Stats" = list(),
      "Gear" = list(),
      "Skills" = list(),
      "Spells" = list(),
      "Items" = list(),
      "MagicClasses" = list(),
      "General" = list(),
      "Active_Spells" = list(
        "Short" = list(),
        "Long" = list()
      )
    )
  )
  ret$Actor$ID <- ID
  ret$Actor$General$Race = "Human"
  ret$Actor$General$Class = "Adventurer"
  ret$Actor$General$Level = 1
  ret$Actor$General$Name = Create_Name[["Human"]]()
  ret$Actor$General$Age = sample(x = 18:30, size = 1)
  ret$Actor$General$Sex = sample(x = c("Male", "Female"), size = 1)
  ret$Actor$Stats$Strength = sample(x = 18:25, size = 1)
  ret$Actor$Stats$Dexterity = sample(x = 18:25, size = 1)
  ret$Actor$Stats$Intelligence = sample(x = 18:25, size = 1)
  ret$Actor$Stats$Wisdom = sample(x = 18:25, size = 1)
  ret$Actor$Stats$Charisma = sample(x = 18:25, size = 1)
  ret$Actor$Stats$Constitution = sample(x = 18:25, size = 1)
  ret$Actor$Stats$Luck = 11
  
  ret$Actor$Stats$Max_Health = 30 + max(0,Modif[["General_Stats"]](ret$Actor$Stats$Constitution))
  ret$Actor$Stats$Cur_Health = ret$Actor$Stats$Max_Health
  ret$Actor$Stats$Max_Mana = 20 + max(0,Modif[["General_Stats"]]((ret$Actor$Stats$Wisdom+ret$Actor$Stats$Intelligence)/2))
  ret$Actor$Stats$Cur_Mana = ret$Actor$Stats$Max_Mana
  
  ret$Actor$Skills = Skills_Manager$Make_Skill_List()
  
  ret$Actor$Spells = Spell_Manager$Create()
  
  ret$Actor$Items = list(Equipment = list(), Items = list(), Key = list())
  
  ret$Actor$Active_Items = list(
    "Short" = list(),
    "Long" = list()
  )
  
  ret$Actor$Gear = list(
    Head = "",
    Back = "",
    Neck = "",
    Chest = "",
    Arms = "",
    Hand_R = "", 
    Hand_L = "",
    Belt = "",
    Legs = "",
    Feet = "",
    Accessory_1 = "",
    Accessory_2 = ""
  )
  
  return(ret)
}
Create_Functions[["Human"]] <- .Create_Player



#Humans <- list()
#for(.each in 1:5){
#  Humans <- append(Humans, Create_Functions[["Human"]]())
#}
#
Human <- Create_Functions[["Human"]]()
#Leveled_Human <- Level_Up_Actor[["Human"]](Human)




###
