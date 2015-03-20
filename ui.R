library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Check Your Chances of Surviving Tomorrow"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("cig",
                 "Number of Cigarettes Smoked:",
                  min = 0,
                  max = 50,
                  value = 30),
      sliderInput("vodka",
                   "Number of Vodka Shots Drank:",
                    min = 0,
                    max = 50,
                    value = 30),
      sliderInput("choc",
                  "Grams of Chocolate Consumed:",
                  min = 0,
                  max = 1000,
                  value = 500)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      tabsetPanel(type = "tabs", 
                  tabPanel("Survival Chance Calculator",  h3('Your chances of surviving tomorrow based on amount of fun had tonight:'),
                           verbatimTextOutput("surviveProb")), 
                  tabPanel("Help", 
                           h3('About'),
                           p('In order to calculate your chances of survival for the following day, we consider your intake of the three basic food groups and carefully weigh fun against probability of sugar/nicotine/alcohol poisoning and give you our prediction of your chances of survival.'),
                           h3('Instructions'),
                           p('Simply go to the Survival Chance Calculator tab and use the sliders on the left to input your consumption of the three basic food groups and  to check you survival chances.'),
                           h2('Disclaimer: Survival Chance Calculator will not be held liable for loss of life or limb caused choices you made after using of this application!'))
      )
      
      
      
#       h3('Your chances of surviving tomorrow based on amount of fun had tonight:'),
#       verbatimTextOutput("surviveProb")
    )
  )
))
  
  
  
  
