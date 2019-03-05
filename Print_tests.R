{
  plot(c(0,1),c(0,1), type = 'n')
  text(.1,.9, paste(Human[["Actor"]][["Stats"]][["Name"]]))
  text(.1,.8, "HP:")
  text(.4,.8, paste(Human[["Actor"]][["Stats"]][["Health"]], "/", Human[["Actor"]][["Stats"]][["Current_Health"]]))
  text(.1, .7, "Strength:")
  text(.4, .7, Human[["Actor"]][["Stats"]][["Strength"]], col = "blue")
}