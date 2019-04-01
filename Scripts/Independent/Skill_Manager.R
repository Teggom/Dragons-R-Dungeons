# skillname = list(level, exp_to_next_level)
# Skills 
# Fast        30
# Quick       50
# Normal      75
# Slow        100
# Very Slow   250
Skills_Manager <- list()
.Skill_Level_Up_Chart <- list(
            #0->1  1->2  2->3  3->4  4->5  5->6
  "fast" = c( 10,   30,   50,   75,  100,  140, 1),
  "quick"= c( 20,   50,   75,  100,  140,  180, 1),
  "normal"=c( 40,   75,  100,  140,  180,  250, 1),
  "slow" = c( 60,  100,  140,  180,  250,  400, 1)
)
Skills_Manager[["Level_up_Chart"]] = .Skill_Level_Up_Chart




# Goes through the list
# For each skill to level up, advance to next and returns Skills with new data
.Level_Up_Skill <- function(Skill_List){
  To_Return = Skill_List
  for(skill in names(Skill_List)){
    Data = Skill_List[[skill]]
    if(Data[[2]]<=0 && Data[[1]] < 6){
      Data[[1]] = Data[[1]] + 1
      Data[[2]] = Skills_Manager$Level_up_Chart[[Data[[3]]]][Data[[1]]+1] + Data[[2]]
      To_Return[[skill]] = Data
    }
  }
  
  return(To_Return)
}
Skills_Manager[["Level_Up_Skills"]] = .Level_Up_Skill

.print_Skills <- function(Skill_List){
  for(skill in names(Skill_List)){
    if(Skill_List[[skill]][[1]] > 0){
      cat(skill, ":      \t", switch(Skill_List[[skill]][[1]], "Novice", "Talented", "Apt", "Skilled", "Greater", "Master"), "\n", sep = "")
    }
  }
}
Skills_Manager[["Print"]] <- .print_Skills

#Given a skill_list, return a list of skills to level up
# List is in the form of list(list(skill, level, rate), list(skill, level, rate))
.Check_LevelUp <- function(Skill_List){
  To_Return <- list()
  for(skill in names(Skill_List)){
    if(Skill_List[[skill]][[2]]<=0 && Skill_List[[skill]][[1]] < 6){
      To_Return = append(To_Return, list(skill, Skill_List[[skill]][[1]]+1, Skill_List[[skill]][[3]]))
    }
  }
  return(To_Return)
}
Skills_Manager[["Check_Level_Up"]] = .Check_LevelUp


.Make_Skill_List <- function(){
  Skills <- list(
    "Athletics" = list(0, 60, "slow"),
    "Acrobatics" = list(0, 60, "slow"),
    "Slight_Of_Hand" = list(0, 20, "quick"),
    "Stealth" = list(0, 40, "normal"),
    "History" = list(0, 10, "fast"),
    "Investigation" = list(0, 10, "fast"),
    "Nature" = list(0,20, "quick"),
    "Religion" = list(0,40, "normal"),
    "Animal_Handling" = list(0,20, "quick"),
    "Insight" = list(0, 40, "normal"),
    "Medicine" = list(0, 40, "normal"),
    "Perception" = list(0, 40, "normal"),
    "Survival" = list(0, 20, "quick"),
    "Deception" = list(0, 20, "quick"),
    "Intimidation" = list(0,40, "normal"),
    "Performance" = list(0,40, "normal"),
    "Persuasion" = list(0,20, "quick"),
    "Mining" = list(0,10, "fast"),
    "Archery" = list(0,60, "slow"),
    "Swimming" = list(0,20, "quick"),
    "Devices" = list(0, 20, "quick"),
    "Gambling" = list(0, 20, "quick"),
    "Lockpicking" = list(0, 20, "quick"),
    "Bluff" = list(0, 20, "quick"), 
    "Speaking" = list(0, 40, "normal"),
    "Alchemy" = list(0, 20, "quick"), 
    "Climb" = list(0, 20, "quick")
  )
  return(Skills)
}

Skills_Manager[["Make_Skill_List"]] <- .Make_Skill_List