library(tcltk2)
library(tkrplot)

hscale <- 3    # Horizontal scaling
vscale <- 2    # Vertical scaling
plotTk <- function() {
  par(bg = "black", bty = 'n', mar=c(0,0,0,0))
  plot(c(0,150),c(0,100), type = 'n', xlim = c(0,150), ylim = c(0,100))
  par(cex=1.5, adj = 0, col = "white", bg = "#FFFFFF", bty = "n")
  rect(-3,60,153,100,col=NA, border = "white")
  text(0,95, paste(Human[["Actor"]][["Stats"]][["Name"]]))
  text(0,90, "HP:")
  text(20,90, paste(Human[["Actor"]][["Stats"]][["Current_Health"]], "/", Human[["Actor"]][["Stats"]][["Health"]]))
  text(0,85, "Strength:")
  text(20,85, Human[["Actor"]][["Stats"]][["Strength"]], col = "blue")
}


Human <- Create_Functions$Human()
win1 <- tktoplevel(background = "black")
tktitle(win1) <- "Game"
win1$env$plot <- tkrplot(win1, fun = plotTk,
                         hscale = hscale, vscale = vscale)
tkpack(win1$env$plot)
tkpack.forget(win1$env$plot)
tkplace(win1$env$plot, x = 0, y = 0, relx = 0, rely = 0)
times <- c()
Human$Actor$Stats$Current_Health = 0
active_windows <- c()
for(frame in 1:6000){
  active_windows = c(win1$env$plot$ID, active_windows)
  if(length(active_windows)>100){
    forgetting = active_windows[5:length(active_windows)]
    for(each in forgetting){
      print(each)
      tkdestroy(eval(parse(text=paste("win1$env$`",each,"`", sep = ""))))
    #  tkplace.forget(each)
    }
    #rm(list = forgetting, envir = win1$env)
    active_windows = active_windows[1:4]
    #win1$env$num.subwin <- 4
  }
  Sys.sleep(.25)
  .time <- Sys.time()
  Human[["Actor"]][["Stats"]][["Current_Health"]] = Human$Actor$Stats$Current_Health + 1
  #tkgrid.remove(win1$env$plot)
  win1$env$plot <- tkrplot(win1, fun = plotTk,
                           hscale = hscale, vscale = vscale)
  #tkplace.forget(toforget)
  tkplace(win1$env$plot, x = 0, y = 0, relx = 0, rely = 0)
  times <- c(times, Sys.time() - .time)
}


