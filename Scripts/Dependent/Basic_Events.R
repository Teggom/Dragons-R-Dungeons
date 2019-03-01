Basic_Event_List <- list()

.Event <- function(Human){
  return_text <- c()
  Name <- Human[["Actor"]][["Stats"]][["Name"]]
  Text <- c(paste(Name, "came across a large rock!"))
  Action <- 0
  writeLines(Text)
  return_text <- c(return_text, Text)
  Text <- c()
  while(!(Action %in% c(1,2,3))){
    Action <- as.integer(readline(prompt =
      "What would you like to do:\n[1]- Walk away.\n[2]- Feel Under the rock.\n[3]- Push the rock aside\n"
    ))
  }
  Actor <- Human[["Actor"]]
  pass = F
  if(Action == 3){
    Text <- c(Text, paste(Name, "tried to push the rock aside."))
    if(Actor[["Stats"]][["Strength"]]>18){
      Text <- c(Text, paste(Name, "pushed the rock aside."))
      pass <- T
    } else {
      Text <- c(Text, paste(Name, "failed."))
    }
  } else if(Action == 2){
    Text <- c(Text, paste(Name, "tried to feel under the rock."))
    if(Actor[["Stats"]][["Dexterity"]]>6){
      Text <- c(Text, paste(Name, "was able to wiggle their hand under the rock."))
      pass <- T
    } else {
      Text <- c(Text, paste(Name, "failed."))
    }
  }
  if(pass){
    Text <- c(Text, paste(Name, "found 24 gold coins and a ring!"))
  } else {
    Text <- c(Text, paste(Name, "moved on."))
  }
  # Add things to the human
  writeLines(Text)
  return_text <- c(return_text, Text)
  return(list(return_text, Human))
}
Basic_Event_List[[length(Basic_Event_List)+1]] <- .Event 