Basic_Event_List <- list()

.Event <- function(Human){
  Name <- Human[["Actor"]][["Stats"]][["Name"]]
  Text <- c(paste(Name, "came across a large rock!"))
  Actor <- Human[["Actor"]]
  pass <- F
  if(Actor[["Stats"]][["Strength"]] > 18){
    Text <- c(Text, paste(Name, "pushed the rock aside."))
    pass <- T
  } else if(Actor[["Stats"]][["Dexterity"]]>6){
    Text <- c(Text, paste(Name, "was able to wiggle their hand under the rock."))
    pass <- T
  }
  if(pass){
    Text <- c(Text, paste(Name, "found 24 gold coins and a ring!"))
  } else {
    Text <- c(Text, paste(Name, "didn't know what to do so they moved on."))
  }
  # Add things to the human
  
  return(list(Text, Human))
}
Basic_Event_List[[length(Basic_Event_List)+1]] <- .Event 