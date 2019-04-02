Item_Manager = list()

#.Items <- read.csv("~/../Downloads/GameElementData - Items.csv", stringsAsFactors = F)
#Item_Manager$Items <- .Items

# Given an item and a stat, returns the value of that
# Does not apply it to a modifier
.Get_Item_Buff <- function(Item_Name, Stat_Name){
  row = Item_Manager$Items[Item_Manager$Items[,1]==Item_Name,]
  return(row[,names(row)==Stat_Name])
}
Item_Manager$Get_Buff <- .Get_Item_Buff
