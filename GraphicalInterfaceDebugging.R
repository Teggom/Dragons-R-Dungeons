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
  text(20,90, paste(Human[["Actor"]][["Stats"]][["Health"]], "/", Human[["Actor"]][["Stats"]][["Current_Health"]]))
  text(0,85, "Strength:")
  text(20,85, Human[["Actor"]][["Stats"]][["Strength"]], col = "blue")
}

win1 <- tktoplevel()
tktitle(win1) <- "Game"

Human[["Actor"]][["Stats"]][["Current_Health"]] = 45
win1$env$plot <- tkrplot(win1, fun = plotTk,
                         hscale = hscale, vscale = vscale)
tkgrid(win1$env$plot)
tk2menu(parent = win1$env$plot, activebackground = "black")
Sys.sleep(1)
Human[["Actor"]][["Stats"]][["Current_Health"]] = 30
tkgrid.remove(win1$env$plot)
win1$env$plot <- tkrplot(win1, fun = plotTk,
                         hscale = hscale, vscale = vscale)
tkgrid(win1$env$plot)