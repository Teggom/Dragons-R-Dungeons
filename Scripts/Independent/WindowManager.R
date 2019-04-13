hscale <- 3
vscale <- 2

Window_Manager <- list()

# Create Global Window Variables
WINDOWSTATE <- list(
  Down = F,
  Current_Window = "Main_Menu",
  EventText = list(),
  OldFrames = c(),
  CurrentFrame = "",
  DisplayPicture = matrix(1,nrow=1,ncol=1),
  Options = list(
    Generated = list(),
    DefaultOptions= list("Items", "Magic"),
    CanWalkAway = T
  ),
  KeyPressed = "",
  PressedTime = Sys.time(),
  TimePressedInterval = .2,
  INPUT = F,
  Window_Variables = list(),
  Player = "",
  BUTTONON = F
)

.Setup <- function(){
  Verbose_Print(3, "In Setup Function")
  par(bg = "black", bty = 'n', mar=c(0,0,0,0))
  plot(c(0,150),c(0,100), type = 'n', xlim = c(0,150), ylim = c(0,100))
  
  Verbose_Print(4,"Created Plot")
  
  par(cex=1.5, adj = 0, col = "white", bg = "#FFFFFF", bty = "n")
  Verbose_Print(4, "Leaving Setup")
}
Window_Manager[["Setup"]] <- .Setup

# Example Choices 
WINDOWSTATE$Options$Generated = list(
  "Mock Barry Allen.",
  "Scream there is a spider below him", 
  "Ask Barry where his mom is.", 
  "Ask if Barry is going to go cry to his mom.",
  "Challenge Barry to a foot race.",
  "Say: 'cool story bro!'"
)
# Example for text of event
WINDOWSTATE$EventText = list(
  "Look mom!", 
  "I'm on TV!", 
  "Hello WORLD!",
  "My name is Barry Allen and I am the fastest man alive.",
  "I ran away from a spider when I was six and I have NEVER stopped running since.",
  "With the help of muh friends at star labs I find other arachnophobes like me.",
  "I Am, The Foo Bar"
)


BuildFrameCharacterSelect <- function(){
  #print("CharacterSelect")
  Verbose_Print(3, "In character Select menu builder")
  Window_Manager$Setup()
  Verbose_Print(4, "Returned from Setup call")
  
  text(50, 94, "Character Select", cex = 2.5)
  index = 80
  Text_Manager$Vanity_Character_Select()
  Verbose_Print(4, "Returned from Vanity_Character_Select() Call")
  for(each in WINDOWSTATE$Window_Variables$Classes){
    text(10, index, each)
    index = index-5
  }
  lines(7, 80-((WINDOWSTATE$Window_Variables$Pointer_Index-1)*5), col = "white", type = "p")
  lines(6.6, 80-((WINDOWSTATE$Window_Variables$Pointer_Index-1)*5), col = "white", type = "p")
  # print class info
  selected = WINDOWSTATE$Window_Variables$Classes[WINDOWSTATE$Window_Variables$Pointer_Index]
  text(72, 80, "Class: ")
  text(130, 80, selected)
  Verbose_Print(4, paste("Selected:", selected))
  if(selected == "Warrior"){
    Text_Manager$Warrior()
  } else if(selected == "Mage"){
    Text_Manager$Mage()
  } else if(selected == "Thief"){
    Text_Manager$Thief()
  } else if(selected == "Bard"){
    Text_Manager$Bard()
  } else {
    text(80, 75, "<Unknown>")
  }
  Verbose_Print(4, "Leaving Character Select Frame Builder")
}

# in between events function
BuildFrameSwitch <- function(){
  Verbose_Print(2, "Building Switch Frame")
  Window_Manager$Setup()
  Text_Manager$Switch_Menu()
}

# Main Menu Frame Function
BuildFrameMainMenu <- function(){
  Verbose_Print(2, "Building Main Menu Frame")
  Window_Manager$Setup()
  Text_Manager$Main_Menu()
}

BuildFrameCredits <- function(){
  Verbose_Print(2, "Building Credits Frame")
  Window_Manager$Setup()
  Text_Manager$Credits()
}

# Build Frame Function
BuildFrameEvent <- function(){
  Verbose_Print(2, "Building Event Frame")
  Window_Manager$Setup()
  rect(-3,60,153,100,col=NA, border = "white")
  linedepth = 95
  # Length of EventText <= 7
   # Avoids flowing out of box 
  # Length of nchar(WINDOWSTATE$EventText[[i]]) < 99
   # Avoids flowing into picture window
  for(line in WINDOWSTATE$EventText){
    text(0,linedepth, line, col = "white")
    linedepth = linedepth-5
  }
  rasterImage(image = WINDOWSTATE$DisplayPicture, xleft = 115, ybottom = 62, xright = 151, ytop = 98)
  
  # Display Choices
  Index = 1
  for(Option in WINDOWSTATE$Options$Generated){
    text(0,60-Index*5,paste("[", Index, "] - ", Option, sep = ""))
    Index = Index+1
  }
  for(Option in WINDOWSTATE$Options$DefaultOptions){
    text(0,60-Index*5, paste("[",Index,"] - ", Option, sep = ""))
    Index = Index+1
  }
  if(WINDOWSTATE$Options$CanWalkAway){
    text(0,60-Index*5,paste("[",Index,"] - Walk Away", sep = ""))
  }
}

# Adds the frame to the game
PackFrame <- function(){
  Verbose_Print(2, "Packing the frame")
  Verbose_Print(4, "Adding Frame to Old Frame")
  WINDOWSTATE$OldFrames <<- c(WINDOWSTATE$OldFrames, GameWindow$env$plot$ID)
  
  Verbose_Print(4, "Setting plot in GameWindow")
  if(WINDOWSTATE$Current_Window=="Switch_Menu"){
    GameWindow$env$plot <<- tkrplot(GameWindow, fun = BuildFrameSwitch,
                                    hscale = hscale, vscale = vscale)
  }
  
  if(WINDOWSTATE$Current_Window=="Character_Select"){
    GameWindow$env$plot <<- tkrplot(GameWindow, fun = BuildFrameCharacterSelect,
                                    hscale = hscale, vscale = vscale)
  }
  
  if(WINDOWSTATE$Current_Window=="Main_Menu"){
    GameWindow$env$plot <<- tkrplot(GameWindow, fun = BuildFrameMainMenu,
                                    hscale = hscale, vscale = vscale)
  }
  if(WINDOWSTATE$Current_Window=="Credits"){
    GameWindow$env$plot <<- tkrplot(GameWindow, fun = BuildFrameCredits,
                                    hscale = hscale, vscale = vscale)
  }
  if(WINDOWSTATE$Current_Window=="Event"){
    GameWindow$env$plot <<- tkrplot(GameWindow, fun = BuildFrameEvent,
                                    hscale = hscale, vscale = vscale)
  }
  Verbose_Print(4, "Plot set, now placing")
  tkplace(GameWindow$env$plot, x = 0, y = 0, relx = 0, rely = 0)
  Verbose_Print(4, "Placed, now recording ID of current frame")
  WINDOWSTATE$CurrentFrame <<- GameWindow$env$plot$ID
  # Arbitrary value, just want to avoid lag during cleanup
  Verbose_Print(4, "Added")
  # Setting to 0 to see what happens
  if(length(WINDOWSTATE$OldFrames) > 0){
    Verbose_Print(3, "Cleaning up old frames")
    Clean_Frames()
  }
  Verbose_Print(4, "Leaving PackFrame")
}




# Garbage Cleanup Function
Clean_Frames <- function(){
  Verbose_Print(3, "Cleaning Frame Function Starting")
  for(ID in WINDOWSTATE$OldFrames){
    Verbose_Print(2, paste("About to destroy", ID))
    Verbose_Print(2, paste("Destroy string is:", paste("GameWindow$env$`", ID, "`", sep = "")))
    Verbose_Print(2, paste("This Evaluates to: ", eval(parse(text=paste("GameWindow$env$`", ID, "`", sep = "")))))
    tkdestroy(eval(parse(text=paste("GameWindow$env$`", ID, "`", sep = ""))))
    # Note:
    #  There's a lot of issues that stem from deleting the old frames. 
    #  The most notable is the `Fatal Error: ButtonProc called on an invalid HWND`
    #  This issue has plagued the early stages of development and caused
    #  me many hours of trying to see what or where the issue came from. 
    #  I finally singled down the issue to tkdestroy, and while debugging
    #  came to find that for whatever reason, calling verbose print three times
    #  caused the error rate to drop to near zero, and cannot replicate it anymore.
    #  Perhaps with a deeper understanding of TK I could find an adiquate solution
    #  or something I could put here that does not result in a "cheap" fix, 
    #  but as I've been messing with this for about two weeks now this will 
    #  do for now :^)
  }
  Verbose_Print(4, paste("All old frames destroyed"))
  WINDOWSTATE$OldFrames <<- c()
}

SetUpWindow <- function(){
  Verbose_Print(2, "Setting up window")
  GameWindow$env$plot <- tkrplot(GameWindow, fun = BuildFrameEvent, 
                                 hscale = hscale, vscale = vscale)
  Verbose_Print(4, "Plotted Base Game")
  tkpack(GameWindow$env$plot)
  Verbose_Print(4, "Packed Base Frame")
  tkpack.forget(GameWindow$env$plot)
  Verbose_Print(4, "Forgot Base Frame")
}

#WINDOWSTATE$EventText <- list("Game is Good", "Game is great!")
#PackFrame()
#
#WINDOWSTATE$EventText <- list("Game is Goody")
#PackFrame()
#
#WINDOWSTATE$EventText <- list("Game is Goody goody")
#PackFrame()
#
#WINDOWSTATE$EventText <- list("Game is Goody goody two Game is Goody goody two Game is Goody goody two ")
#PackFrame()
#
#WINDOWSTATE$EventText <- list("Game is Goody goody two shoes")
#PackFrame()





