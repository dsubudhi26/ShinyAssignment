#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Load Data

citytemperature <- read.csv("./temperature.csv")


# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("Temperature by City"), 
  
  # Generate a row with a sidebar 
  sidebarLayout(       
    
    
    # Define the sidebar with one input 
    sidebarPanel(p(strong("Documentation:",style="color:brown"), a("User Help Page",href="http://rpubs.com/dsubudhi26/citytemperature")), 
                 selectInput("Region", "Region:",  
                             choices=colnames(citytemperature)), 
                 hr(), 
                 helpText("Temperature Variation from Jan-May.") 
    ), 
    
    # Create a spot for the barplot 
    mainPanel( 
      plotOutput("temperature")   
    ) 
    
  ) 
) 