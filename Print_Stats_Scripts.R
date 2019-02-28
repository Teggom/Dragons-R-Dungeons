Print_Stats <- list()

.Print_Human_Stats <- function(Human){
  writeLines(paste("ID : ", Human[["Actor"]][["ID"]]))
  for(stat in names(Human[["Actor"]][["Stats"]])){
    writeLines(paste(stat, " : ", Human[["Actor"]][["Stats"]][[stat]]))
  }
  # Code for spells and skills here
}
Print_Stats[["Human"]] <- .Print_Human_Stats
