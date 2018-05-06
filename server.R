#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

citytemperature <- read.csv("./temperature.csv")

# Define a server for the Shiny app 
function(input, output) { 
  
  # Fill in the spot we created for a plot 
  output$temperature <- renderPlot({ 
    
    # Render a barplot 
    barplot(citytemperature[,input$Region],  
            main=input$Region, 
            ylab="Temperature in city in India", 
            xlab="Month") 
  })
}