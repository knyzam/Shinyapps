library(shiny)


  shinyUI(fluidPage(
    
  titlePanel("USC to Metric Converter"),
  h3("Convert United States Customary system (USC) to Metric system"),
  
  sidebarPanel(
    
    helpText("This apps convert Convert United States Customary system (USC) to Metric system used as standard worldwide. Select the measurement that you wanted and the result will be shown on the right side of your screen."),
    
    
    sliderInput("wgt", "Weigth (Pounds):", 
                min = 0, max = 500, value = 100),
    
    numericInput("wgt1", "Weigth (Ounces):", 
                min = 0, max = 500, value = 10, step= 1),
    
    sliderInput("dis", "Distance (Miles):", 
                 min = 0, max = 999, value = 100),
    
    numericInput("dis1", "Distance (Yard):", 
                 min = 0, max = 9999, value = 100, step= 0.1),
    
    sliderInput("hgt", "Height (Ft):",
                min = 0, max = 900, value = 180)
    
  ),
  
  mainPanel(
    h3("Results"),
    tableOutput("values")
  )
))