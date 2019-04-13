.Testing <- list()

.Load_Player <- function(){
  WINDOWSTATE$Player <<- Character_Manager$Set_Class(Create_Functions$Human(), "Warrior")
  WINDOWSTATE$Player$Actor$Items <<- as.list(sample(size = 20, x = Item_Manager$Items$Item.Name))
}
.Testing[["Load_Player"]] <- .Load_Player 