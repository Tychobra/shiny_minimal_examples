library(shiny)

ui <- fluidPage(
  # 1. user enters input into this text box
  textInput(
    inputId = "my_input",
    label = "Text Input"
  ),
  
  # 4. we print the object returned with output$my_output here
  verbatimTextOutput("my_output")
)

# 2. the user's input from 1. is passed to the input argument in the below function as
# input$my_input
server <- function(input, output) {
  # 3. we handle the input however we want on the server.  Here
  # we are just passing it back to ui with a renderPrint to output$my_output
  output$my_output <- renderPrint({
    input$my_input  
  })
}

shinyApp(ui, server)