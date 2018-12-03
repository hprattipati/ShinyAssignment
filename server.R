#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw the plot
shinyServer(function(input, output) {
  
    output$distPlot <- renderPlot({
    
    Passengers <- window(AirPassengers,c(1949,1),c(input$slider2,12))
    
    plot.ts(Passengers, xy.labels = TRUE, type="b",main = "Passeneger Growth Over the Years")
   })
  
})
