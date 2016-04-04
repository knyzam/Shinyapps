library(shiny)

shinyServer(function(input, output) {
  
  sliderValues <- reactive({
    
    data.frame(
      Name = c("Weight (Kilograms)",
               "Weight (Grams)",
               "Distance (Kilometers)",
               "Distance (Meters)",
               "Height (Centimeter)"),
               
      Value = as.character(c(input$wgt*0.45359,
                             input$wgt1*28.34952,
                             input$dis*1.60934,
                             input$dis1*0.9144,
                             input$hgt*30.48)),
      stringsAsFactors=FALSE)
  }) 
  
  output$values <- renderTable({
    sliderValues()
  })
})