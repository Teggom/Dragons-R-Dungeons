Modif <- list()

.General_Stats <- function(value = 0){
  if(value<=1){
    return(-5)
  } else if(value<=3){
    return(-4)
  } else if(value <= 5){
    return(-3)
  } else if(value <= 7){
    return(-2)
  } else if(value <= 10){
    return(-1)
  } else if(value <= 13){
    return(0)
  } else if(value <= 17){
    return(1)
  } else if(value <= 20){
    return(2)
  } else if(value <= 22){
    return(3)
  } else if(value <= 25){
    return(4)
  } else if(value <= 28){
    return(5)
  } else if(value <= 32){
    return(6)
  } else if(value <= 37){
    return(7)
  } else if(value <= 43){
    return(8)
  } else if(value <= 50){
    return(9)
  } else if(value <= 59){
    return(10)
  } else if(value <= 69){
    return(11)
  } else if(value <= 80){
    return(12)
  } else if(value <= 92){
    return(13)
  } else if(value <= 105){
    return(14)
  } else if(value <= 119){
    return(15)
  } else if(value <= 134){
    return(16)
  } else if(value <= 150){
    return(17)
  } else if(value <= 167){
    return(18)
  } else if(value <= 185){
    return(19)
  } else if(value <= 204){
    return(20)
  } else {
    return(21)
  }
}
Modif[["General_Stats"]] = .General_Stats

.Bonus_To_Skills <- function(tier = 0){
  if(tier == 0){
    return(0)
  }
  if(tier > 5){
    return(40)
  }
  return(
    switch(tier,
           3,8,15,25,40)
  )
}
Modif[["Bonus_To_Skills"]] <- .Bonus_To_Skills

.Bonus_To_Stats <- function(tier = 0){
  if(tier == 0){
    return(0)
  }
  if(tier > 5){
    return(50)
  }
  return(
    switch(tier,
           3,8,16,30,50)
  )
}
Modif[["Bonus_To_Stats"]] <- .Bonus_To_Stats

.Skill_Level_Bonus <- function(level = 0){
  if(level == 0){
    return(0)
  }
  if(level > 6){
    return(25)
  }
  return(
    switch(level,
           4,8,12,16,20,25)
  )
}
Modif[["Skill_Level_Bonus"]] <- .Skill_Level_Bonus
