library(shiny)

getProb<-function(cig,vod,choc) {
  x<-1/(cig/50+vod/50+choc/1000+1)
  if (x>0.85) {print(x/50)
              print("Warning!!!")
              print("Death of boredom imminent")}
  
  else if (x<0.3){ print(x/50)
                   print("You should have stopped while you had the chance!")
                   print ("Now it's too late, might as well enjoy today, because tomorrow isn't coming!") }
  else if (x<0.35){ print(x/7)
                    print("Approaching overdose, things are not looking good! Better stop right now") }
  else {print(x)}
              
  }
 

    
shinyServer(function(input, output) {
  
  output$surviveProb <- renderPrint({getProb(input$cig,input$vodka, input$choc)})
   

  
})