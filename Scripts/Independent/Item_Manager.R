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