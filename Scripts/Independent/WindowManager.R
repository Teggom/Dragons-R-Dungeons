hscale <- 3
vscale <- 2

Window_Manager <- list()

# Create Global Window Variables
WINDOWSTATE <- list(
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
  TimePressedInterval = .5,
  INPUT = F
)

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

# Create Game Window and give it a title
# Also define Keys here
GameWindow <- tktoplevel(background = "black")
tkbind(GameWindow, "<Key-1>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "1"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-2>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "2"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-3>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "3"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-4>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "4"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-5>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "5"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-6>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "6"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-7>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "7"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-8>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "8"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-9>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "9"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-0>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "0"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-Left>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "Left"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-Right>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "Right"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tkbind(GameWindow, "<Key-Escape>", 
       function(){
         if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
           WINDOWSTATE$KeyPressed <<- "Esc"
           WINDOWSTATE$PressedTime <<- Sys.time()
           WINDOWSTATE$INPUT <<- T
         }
       }
)
tktitle(GameWindow) <- "The Great Quest"

# Main Menu Frame Function
BuildFrameMainMenu <- function(){
  par(bg = "black", bty = 'n', mar=c(0,0,0,0))
  plot(c(0,150),c(0,100), type = 'n', xlim = c(0,150), ylim = c(0,100))
  par(cex=1.5, adj = 0, col = "white", bg = "#FFFFFF", bty = "n")
  text(x = 20, y = 80, "Dungeons `R` Dragons", cex = 3) 
  text(x = 30, y = 50, "[1] - Start")
  text(x = 30, y = 42, "[2] - Credits")
  text(x = 30, y = 34, "[3] - Quit")
}

BuildFrameCredits <- function(){
  par(bg = "black", bty = 'n', mar=c(0,0,0,0))
  plot(c(0,150),c(0,100), type = 'n', xlim = c(0,150), ylim = c(0,100))
  par(cex=1.5, adj = 0, col = "white", bg = "#FFFFFF", bty = "n")
  text(x = 60, y = 80, "Credits", cex = 2.5)
  text(x = 20, y = 55, "Almost Everything:          Stephen Kozak")
  text(x = 20, y = 48, "Ideas:                             Philip, Chett")
  text(x = 20, y = 41, "Special Thanks:            Ian B Page")
  text(x = 20, y = 30, "     And thank `YOU` for playing!")
  text(x = 50, y = 10, "Press [1] to go back")
}

# Build Frame Function
BuildFrameEvent <- function(){
  par(bg = "black", bty = 'n', mar=c(0,0,0,0))
  plot(c(0,150),c(0,100), type = 'n', xlim = c(0,150), ylim = c(0,100))
  par(cex=1.5, adj = 0, col = "white", bg = "#FFFFFF", bty = "n")
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
  
  WINDOWSTATE$OldFrames <<- c(WINDOWSTATE$OldFrames, GameWindow$env$plot$ID)
  
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
  tkplace(GameWindow$env$plot, x = 0, y = 0, relx = 0, rely = 0)
  WINDOWSTATE$CurrentFrame <<- GameWindow$env$plot$ID
  # Arbitrary value, just want to avoid lag during cleanup
  if(length(WINDOWSTATE$OldFrames) > 3){
    Clean_Frames()
  }
}




# Garbage Cleanup Function
Clean_Frames <- function(){
  for(ID in WINDOWSTATE$OldFrames){
    tkdestroy(eval(parse(text=paste("GameWindow$env$`", ID, "`", sep = ""))))
  }
  WINDOWSTATE$OldFrames <<- c()
}

SetUpWindow <- function(){
  GameWindow$env$plot <- tkrplot(GameWindow, fun = BuildFrameEvent, 
                                 hscale = hscale, vscale = vscale)
  tkpack(GameWindow$env$plot)
  tkpack.forget(GameWindow$env$plot)
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





