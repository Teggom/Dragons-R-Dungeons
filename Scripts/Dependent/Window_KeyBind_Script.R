# Create Game Window and give it a title
# Also define Keys here
Keys <- list()

# Activate/Deactivate
GameWindow <- tktoplevel(background = "black")
On <- function(){
  if(!WINDOWSTATE$BUTTONON){
    GameWindow$env$Controller <<- tk2button(GameWindow, text = "Keyboard", width = -10, command = function(){})
    tkplace(GameWindow$env$Controller, x = -100, y = -100, relx = 0, rely = 0)
    tkfocus(GameWindow$env$Controller)
    WINDOWSTATE$BUTTONON <<- T
  }
  tkbind(GameWindow$env$Controller, "<Key-1>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "1"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-2>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "2"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-3>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "3"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-4>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "4"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-5>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "5"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-6>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "6"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-7>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "7"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-8>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "8"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-9>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "9"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-0>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "0"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-Left>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "Left"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-Right>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "Right"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-Up>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "Up"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-Down>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "Down"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-Escape>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "Esc"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
  tkbind(GameWindow$env$Controller, "<Key-Return>", 
         function(){
           if(Sys.time()-WINDOWSTATE$PressedTime>WINDOWSTATE$TimePressedInterval){
             WINDOWSTATE$KeyPressed <<- "Enter"
             WINDOWSTATE$PressedTime <<- Sys.time()
             WINDOWSTATE$INPUT <<- T
           }
         }
  )
}
Off <- function(){
  tkdestroy(GameWindow$env$Controller)
  WINDOWSTATE$BUTTONON <<- F
}
tktitle(GameWindow) <- "Dragons `R` Dungeons"
  
Keys$On <- On
Keys$Off <- Off
On()