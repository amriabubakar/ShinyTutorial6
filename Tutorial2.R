library(shiny)


ui <- fluidPage(
  
  print("SIMPLE ADD CALCULATOR"),
  
  numericInput(inputId = "n1", label = "Key in your number", value = 0.0),
  print("+"),
  numericInput(inputId = "n2", label = "Key in your number", value = 0.0),
  
  print("Value = "),
  textOutput("n3")
  
  )

server <- function(input, output, session) {
  output$n3 <- renderPrint(input$n1 + input$n2)
  
  }

shinyApp(ui = ui, server = server)