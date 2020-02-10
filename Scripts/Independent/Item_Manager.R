Item_Manager = list()

.Items <- read.csv("Files/GameElementData - Items.csv", stringsAsFactors = F)
Item_Manager$Items <- .Items

# Given an item and a stat, returns the value of that
# Does not apply it to a modifier
.Get_Item_Buff <- function(Item_Name, Stat_Name){
  row = Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,]
  return(row[,names(row)==Stat_Name])
}
Item_Manager$Get_Buff <- .Get_Item_Buff

# Returns the item type (Gear/Consumable/Key)
.Get_Type <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,2])
}
Item_Manager[["Get_Type"]] <- .Get_Type

# Returns the item slot (Which Slot it goes in) Can be "" if not gear
.Get_Slot <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,3])
}
Item_Manager[["Get_Slot"]] <- .Get_Slot

.Get_Weapon_Type <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,4])
}
Item_Manager[["Get_Weapon_Type"]] <- .Get_Weapon_Type

.Get_Tier <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,5])
}
Item_Manager[["Get_Tier"]] <- .Get_Tier

.Get_Flavor_Text <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,6])
}
Item_Manager[["Get_Text"]] <- .Get_Flavor_Text

.Get_Attack <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,7])
}
Item_Manager[["Get_Attack"]] <- .Get_Attack

.Get_Defense <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,8])
}
Item_Manager[["Get_Defense"]] <- .Get_Defense

.Get_Weight <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,9])
}
Item_Manager[["Get_Weight"]] <- .Get_Weight

.Get_Cost <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,10])
}
Item_Manager[["Get_Cost"]] <- .Get_Cost

.Get_Durability <- function(Item_Name){
  return(Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,11])
}
Item_Manager[["Get_Durability"]] <- .Get_Durability


# Given an item name, this will get the text and return a list of strings
.Prime_Text <- function(Item_Name, wrap_length=20){
  Text <- Item_Manager$Get_Text(Item_Name)
  Text <- list(Text)
  while(length(strsplit(Text[[length(Text)]], split = "")[[1]])>wrap_length){
    # pull line
    working_line <- Text[[length(Text)]]
    words <- strsplit(working_line, split = " ")[[1]]
    complete <- F
    redone_line <- words[1]
    words <- words[-1]
    while(!complete){
      temp <- paste(redone_line, words[1])
      if(length(strsplit(temp, split = "")[[1]])>wrap_length){
        complete <- T
      } else {
        redone_line <- temp
        words <- words[-1]
      }
      if(length(words)<1){
        complete <- T
      }
    }
    Text[[length(Text)]] <- redone_line
    if(length(words)>0){
      Text <- append(Text, paste(words, collapse = " "))
    }
  }
  return(Text)
}
Item_Manager[["Prime_Text"]] <- .Prime_Text

# Ran when sourced this fills in the spreadsheet with cost values for each item
.Generate_Item_Costs <- function(){
  for(row in 1:nrow(Item_Manager$Items)){
    r <- Item_Manager$Items[row,]
    cost <- (r$Attack+r$Defense)*3
    cost <- cost + sum(r[1,16:ncol(r)])^1.2 + max(r[1,16:ncol(r)])^2
    cost <- cost + sum(r$Strength, r$Dexterity, r$Intelligence, 
                       r$Charisma, r$Wisdom, r$Endurance)^2
    cost <- cost + r$Luck^3 
    cost <- cost + sum(r$Slash + r$Knockback + r$Puncture)^1.3
    cost <- cost^(r$Tier/5 + 1) + r$Weight^.7
    Item_Manager$Items$Cost[row] <<- ceiling(cost)
  }
}
.Generate_Item_Costs()

# Gets boosts of item in list of lists
# lists are list(list(<Name>, <Grade>), ...)
.get_Item_Boosts <- function(Item_Name){
  List <- list()
  row <- Item_Manager$Items[Item_Manager$Items$Item.Name==Item_Name,]
  for(col in 16:ncol(Item_Manager$Items)){
    if(row[col]!=0){
      List <- append(List, list(list(colnames(row)[col], 
                                     switch(as.numeric(row[col]), "D", "C", "B", "A", "S"))))
    }
  }
  return(List)
}
Item_Manager[["Get_Boosts"]] <- .get_Item_Boosts

# Gets boosts of item in list of lists
# lists are list(list(<Name>, <Grade_Int>), ...)
.get_Item_Boosts_Int <- function(Item_Name){
  List <- list()
  row <- Item_Manager$Items[Item_Manager$Items$Item.Name==Item_Name,]
  for(col in 16:ncol(Item_Manager$Items)){
    if(row[col]!=0){
      List <- append(List, list(list(colnames(row)[col],as.numeric(row[col]))))
    }
  }
  return(List)
}
Item_Manager[["Get_Boosts_Int"]] <- .get_Item_Boosts_Int