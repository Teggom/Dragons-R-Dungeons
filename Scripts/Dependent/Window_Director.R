# This is the only object that can call for screen updates
Window_Director <- list()

Game_Start <- function(){
  PackFrame()
  while(T){
    input = Window_Director$Check_Input()
    if(input!=""){
      cat("You pressed the", input, "key at", WINDOWSTATE$PressedTime, "\n")
    }
    if(input=="Esc"){
      cat("You have hit the escape key...\nGoodbye!\n")
      Sys.sleep(.1)
      stop()
    }
    if(WINDOWSTATE$Current_Window == "Main_Menu" && input!=""){
      Window_Director$Main_Menu(input)
    }
    
    if(WINDOWSTATE$Current_Window == "Credits" && input != ""){
      Window_Director$Credits(input)
    }
    
    if(WINDOWSTATE$Current_Window == "Character_Select" && input != ""){
      Window_Director$Character_Select(input)
    }
    
    if(input != ""){
      PackFrame()
    }
    
  }
}


.Check_Input <- function(){
  if(WINDOWSTATE$INPUT==T){
    Value = WINDOWSTATE$KeyPressed
    WINDOWSTATE$KeyPressed <<- ""
    WINDOWSTATE$INPUT <<- F
    return(Value)
  }
  return("")
}
Window_Director$Check_Input <- .Check_Input

.Main_Menu <- function(input){
  if(input == "1"){
    WINDOWSTATE$Current_Window <<- "Character_Select"
    WINDOWSTATE$Window_Variables <<- list(
      "Classes" = list(
        "Warrior", 
        "Mage", 
        "Thief", 
        "Bard"
      ),
      Pointer_Index = 1
    )
  }
  if(input == "2"){
    WINDOWSTATE$Current_Window <<- "Credits"
  }
  if(input == "3"){
    tk_messageBox(type = "ok", message = "Goodbye! Thanks for playing")
    stop("Quit game.")
  }
}
Window_Director$Main_Menu <- .Main_Menu

.Character_Select <- function(input){
  if(input == "Up"){
    WINDOWSTATE$Window_Variables$Pointer_Index <<- max(1,WINDOWSTATE$Window_Variables$Pointer_Index - 1)
  }
  if(input == "Down"){
    WINDOWSTATE$Window_Variables$Pointer_Index <<- min(length(WINDOWSTATE$Window_Variables$Classes), WINDOWSTATE$Window_Variables$Pointer_Index + 1)
  }
  if(input == "Enter"){
    print("Game Starts")
    stop()
  }
}
Window_Director$Character_Select <- .Character_Select

.Credits <- function(input){
  if(input == "1"){
    WINDOWSTATE$Current_Window <<- "Main_Menu"
  }
}
Window_Director$Credits <- .Credits
