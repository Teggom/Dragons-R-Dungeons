# This is the only object that can call for screen updates
Window_Director <- list()

# Since it will be accessed frequently
Window_Director$Switch_Variables <- list(
  Cursor_Spot = "Select", # Bag, Equip, Spell
  # Where the cursor is in the select menu
  Select_Cursor_Spot = 1,
  # what type of sort is happening in BAG
  Sort_Type = "1",
  # Where the cursor is in BAG
  Bag_Cursor_Spot = 1,
  # Where the cursor is in Spell
  Spell_Cursor_Spot = 1,
  # Where the cursor is in Equip
  Equip_Cursor_Spot = 1,
  # Info about the Bag
  Bag_Info = list(
    Max_Depth = 1,
    Cur_Depth = 1,
    Bags = list(
      Gear = list(),
      Consumables = list(),
      Key = list()
    )
  )
)

Game_Start <- function(){
  Verbose_Print(2, "Game Starting")
  PackFrame()
  while(T){
    input = Window_Director$Check_Input()
    if(input != ""){
      Verbose_Print(2,"Input recieved")
      Verbose_Print(4,"About to turn keys off")
      Keys$Off()
      Verbose_Print(4, "Keys Turned Off")
    }
    if(input!=""){
      cat("You pressed the", input, "key at", WINDOWSTATE$PressedTime, "\n")
      Verbose_Print(1, paste("KEYPRESS:", input))
    }
    if(input=="Esc"){
      cat("You have hit the escape key...\nGoodbye!\n")
      Sys.sleep(.1)
      stop()
    }
    
    if(WINDOWSTATE$Current_Window == "Switch_Menu" && input != ""){
      Verbose_Print(2, "Checking Switch Menu Input")
      Window_Director$Switch_Menu(input)
    }
    
    if(WINDOWSTATE$Current_Window == "Main_Menu" && input!=""){
      Verbose_Print(2, "Checking Main Menu Input")
      Window_Director$Main_Menu(input)
    }
    
    if(WINDOWSTATE$Current_Window == "Credits" && input != ""){
      Verbose_Print(2, "Checking Credits Menu Input")
      Window_Director$Credits(input)
    }
    
    if(WINDOWSTATE$Current_Window == "Character_Select" && input != ""){
      Verbose_Print(2, "Checking Character Select Input")
      Window_Director$Character_Select(input)
    }
    
    if(input != ""){
      Verbose_Print(3, "About to pack the frame")
      PackFrame()
      Verbose_Print(4, "Frame Packed")
    }
    if(input != ""){
      Verbose_Print(4, "About to toggle keys on")
      Keys$On()
      Verbose_Print(4, "Keys on")
    }
  }
}


.Check_Input <- function(){
  if(WINDOWSTATE$INPUT==T){
    Value = WINDOWSTATE$KeyPressed
    WINDOWSTATE$KeyPressed <<- ""
    WINDOWSTATE$INPUT <<- F
    print(Value)
    return(Value)
  }
  return("")
}
Window_Director$Check_Input <- .Check_Input

.Switch_Menu <- function(input){
  # TODO Switch Menu Logic Handling here
  # Select Logic
  if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Select"){
    if(input == "Right" || input == "Enter"){
      # Bag
      if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot==1){
        WINDOWSTATE$Window_Variables$Cursor_Spot <<- "Bag"
      }
      # Spells
      if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot==2){
        WINDOWSTATE$Window_Variables$Cursor_Spot <<- "Spells"
      }
      # Stats - does nothing
      ## TODO - advances to next area
      ## TODO - Saves the game
      ## TODO - Quits
    }
    if(input == "Up"){
      if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot > 1){
        WINDOWSTATE$Window_Variables$Select_Cursor_Spot <<- WINDOWSTATE$Window_Variables$Select_Cursor_Spot - 1
      } else {
        WINDOWSTATE$Window_Variables$Select_Cursor_Spot <<- 6
      }
    }
    if(input == "Down"){
      if(WINDOWSTATE$Window_Variables$Select_Cursor_Spot < 6){
        WINDOWSTATE$Window_Variables$Select_Cursor_Spot <<- WINDOWSTATE$Window_Variables$Select_Cursor_Spot + 1
      } else {
        WINDOWSTATE$Window_Variables$Select_Cursor_Spot <<- 1
      }
    }
  } else if (WINDOWSTATE$Window_Variables$Cursor_Spot == "Spells"){   # Spell Logic
  ## Up / Down
  ## pageUp / pageDown
  } else if (WINDOWSTATE$Window_Variables$Cursor_Spot == "Bag"){# Bag Logic
  ## Sort type (1- Gear, 2- Consumable, 3- Key)
    WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth <<- length(WINDOWSTATE$Window_Variables$Bag_Info$Bags[[
      switch(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type), "Gear", "Consumables", "Key")
    ]])
    if(input == "1"){
      WINDOWSTATE$Window_Variables$Sort_Type <<- "1"
      WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth <<- length(WINDOWSTATE$Window_Variables$Bag_Info$Bags$Gear)
      WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- 1
    }
    if(input == "2"){
      WINDOWSTATE$Window_Variables$Sort_Type <<- "2"
      WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth <<- length(WINDOWSTATE$Window_Variables$Bag_Info$Bags$Consumables)
      WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- 1
    }
    if(input == "3"){
      WINDOWSTATE$Window_Variables$Sort_Type <<- "3"
      WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth <<- length(WINDOWSTATE$Window_Variables$Bag_Info$Bags$Key)
      WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- 1
    }
    if(input == "Left"){
      WINDOWSTATE$Window_Variables$Cursor_Spot <<- "Select"
      
    }
  ## Up / Down
    if(input == "Up"){
      if(WINDOWSTATE$Window_Variables$Bag_Cursor_Spot == 1){
        # if not on the first page, go up a page, otherwise nothing
        if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth > 1){
          WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth - 1
          WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- 14
        }
      } else {
        WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- WINDOWSTATE$Window_Variables$Bag_Cursor_Spot - 1
      }
    }
    if(input == "Down"){
      # Bottom of page, go down if possible
      if(WINDOWSTATE$Window_Variables$Bag_Cursor_Spot==14){
        if(WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth > WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth){
          WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth + 1
          WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- 1
        }
      } else {
        # if not at bottom of current page, go one further down
        if(length(WINDOWSTATE$Window_Variables$Bag_Info$Bags[[
          switch(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type), "Gear", "Consumables", "Key")
        ]][[
          WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth
        ]]) > WINDOWSTATE$Window_Variables$Bag_Cursor_Spot){
          print(WINDOWSTATE$Window_Variables$Bag_Cursor_Spot)
          WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- WINDOWSTATE$Window_Variables$Bag_Cursor_Spot + 1
        }
      }
    }
  ## pageUp/pageDown
    if(input == "5"){ # page down
      if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth<WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth){
        WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth + 1
        WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- 1
      } else {
        WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- length(WINDOWSTATE$Window_Variables$Bag_Info$Bags[[
          switch(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type), "Gear", "Consumable", "Key")
          ]][[
            WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth
          ]])
      }
    }
    if(input == "4"){ # page up
      if(WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth > 1){
        WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth <<- WINDOWSTATE$Window_Variables$Bag_Info$Cur_Depth - 1
      }
      WINDOWSTATE$Window_Variables$Bag_Cursor_Spot <<- 1
    }
  ## Right
    if(input == "Right"){
      # TODO Enter Equip
      WINDOWSTATE$Window_Variables$Cursor_Spot <<- "Equip"
      
    }
  } else if(WINDOWSTATE$Window_Variables$Cursor_Spot == "Equip"){# Equip Logic
    # Up down
    if(input == "Up"){
      if(WINDOWSTATE$Window_Variables$Equip_Cursor_Spot != 1){
        WINDOWSTATE$Window_Variables$Equip_Cursor_Spot <<- WINDOWSTATE$Window_Variables$Equip_Cursor_Spot - 1
      }
    }
    if(input == "Down"){
      if(WINDOWSTATE$Window_Variables$Equip_Cursor_Spot != 12){
        WINDOWSTATE$Window_Variables$Equip_Cursor_Spot <<- WINDOWSTATE$Window_Variables$Equip_Cursor_Spot + 1
      }
    }
    ## Select (Right / Enter)
    if(input == "Enter" || input == "Right"){
      ## TODO Switch Item
    }
    ## leave
    if(input == "Left"){
      WINDOWSTATE$Window_Variables$Cursor_Spot <<- "Bag"
    }
  }
  Character_Manager$Prime_Bag()
}
Window_Director$Switch_Menu <- .Switch_Menu

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
    WINDOWSTATE$Current_Window <<- "Switch_Menu"
    Chosen_Class <- WINDOWSTATE$Window_Variables$Classes[[WINDOWSTATE$Window_Variables$Pointer_Index]]
    WINDOWSTATE$Window_Variables <<- Window_Director$Switch_Variables
    WINDOWSTATE$Player <<- Character_Manager$Set_Class(Create_Functions$Human(), Chosen_Class)
    WINDOWSTATE$Window_Variables$Bag_Info$Max_Depth <<- length(WINDOWSTATE$Window_Variables$Bag_Info$Bags[[
      switch(as.numeric(WINDOWSTATE$Window_Variables$Sort_Type), "Gear", "Consumables", "Key")
      ]])
  }
}

Window_Director$Character_Select <- .Character_Select

.Credits <- function(input){
  if(input == "1"){
    WINDOWSTATE$Current_Window <<- "Main_Menu"
  }
}
Window_Director$Credits <- .Credits

## Here are the solution items
