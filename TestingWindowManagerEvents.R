Events = list(
  #OUTLINE OF EVENTS
  "SampleEvent" = list( # This defines the overhead list
    Text = list( # This list shows the text when entering the event
      
    )  
  ),
  
  
  
  
  
  
  # Boulder
  "Boulder" = list(
    
  ),
  
  
  
  # Flash
  "FlashMeeting" = list(
    # All FlavorText
    Text = list(
      "Look mom!", 
      "I'm on TV!", 
      "Hello WORLD!",
      "My name is Barry Allen and I am the fastest man alive.",
      "I ran away from a spider when I was six and I have NEVER stopped running since.",
      "With the help of muh friends at star labs I find other arachnophobes like me.",
      "I Am, The Foo Bar"
    ),
    Choices = list(
      "Mock", 
      "Ask him where his mom is",
      "Challenge to a foot race",
      T
    ),
    Responses = list(
      "1" = list(
        Text = list(
          "\"Please dont mock me\", Barry cries",
          "All I know is running"
        ),
        Reward= list(
          "You get a vial of Flash Tears"
        ),
        Next = list(
          EventGroup = "",
          EventName = ""
        )
      ),
      "2" = list(
        Text = list(
          "Barry punches you in your throat.",
          "You die"
        ),
        Reward = list(),
        Next = list(
          EventGroup = "",
          EventName = ""
        )
      ),
      "3" = list(
        Text = list(
          "Feeling confident, you ask barry to race.",
          "The race starts off great with you in the lead.",
          "Then Barry overtakes you, as he is, ThE FLaSH!!*@!",
          "Feeling Lonely, you head towards the pub."
        ),
        Reward = list(),
        Next = list(
          EventGroup = "",
          EventName = "PubEvent"
        )
      )
    )
    
  )
  
  
  
  
  
  
  
  
)