Print_Stats <- list()

.Print_Human_Stats <- function(Human){
  writeLines(paste("ID : ", Human[["Actor"]][["ID"]]))
  cat("Health:\t", Human$Actor$Stats$Cur_Health, "/", Human$Actor$Stats$Max_Health, "\n")
  cat("Mana:  \t", Human$Actor$Stats$Cur_Mana, "/", Human$Actor$Stats$Max_Mana, "\n")
  for(stat in names(Human$Actor$Stats)){
    if(!grepl("Mana|Health|Luck", stat)){
      Bonus = ""
      if(Modif$General_Stats(Human$Actor$Stats[[stat]])>0){
        Bonus = "+"
      }
      cat(stat, ": \t", Human$Actor$Stats[[stat]], "\t(", Bonus, Modif$General_Stats(Human$Actor$Stats[[stat]]), ")\n", sep = "")
    }
  }
  # Code for spells and skills here
}
Print_Stats[["Human"]] <- .Print_Human_Stats
