
Create_Functions <- list()

# Move to main
Entity_IDs <- c()

#Basic Naming purposes


### human
.Create_Human <- function(){
  ID = length(Entity_IDs)
  Entity_IDs <<- c(Entity_IDs, ID)
  ret <- list("Actor" = list("Stats" = list()))
 
  ret[["Actor"]][["ID"]] <- ID
  ret[["Actor"]][["Stats"]][["Race"]] <- "Human"
  ret[["Actor"]][["Stats"]][["Class"]] <- "Adventurer"
  ret[["Actor"]][["Stats"]][["Level"]] <- 1
  ret[["Actor"]][["Stats"]][["Name"]] <- Create_Name[["Human"]]()
  ret[["Actor"]][["Stats"]][["Age"]] <- sample(x = 18:25, size = 1)
  ret[["Actor"]][["Stats"]][["Sex"]] <- sample(x = c("Male", "Female"), size = 1)
  ret[["Actor"]][["Stats"]][["Health"]] <- sample(x = 10:15, size = 1)
  ret[["Actor"]][["Stats"]][["Mana"]] <- sample(x = 5:8, size = 1)
  ret[["Actor"]][["Stats"]][["Current_Health"]] <- ret[["Actor"]][["Stats"]][["Health"]]
  ret[["Actor"]][["Stats"]][["Current_Mana"]] <- ret[["Actor"]][["Stats"]][["Mana"]]
  ret[["Actor"]][["Stats"]][["Strength"]] <- sample(x = 3:5, size = 1)
  ret[["Actor"]][["Stats"]][["Dexterity"]] <- sample(x = 3:5, size = 1)
  ret[["Actor"]][["Stats"]][["Speed"]] <- sample(x = 3:5, size = 1)
  ret[["Actor"]][["Stats"]][["Intelligence"]] <- sample(x = 3:5, size = 1)
  ret[["Actor"]][["Skills"]] <- list()
  ret[["Actor"]][["Spells"]] <- list()
  return(ret)
}
Create_Functions[["Human"]] <- .Create_Human


Humans <- list()
for(.each in 1:5){
  Humans <- append(Humans, Create_Functions[["Human"]]())
}

Human <- Create_Functions[["Human"]]()
Leveled_Human <- Level_Up_Actor[["Human"]](Human)




###