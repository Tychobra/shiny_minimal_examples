library(shiny)

ui <- fluidPage(
  textInput(
    inputId = "my_input",
    label = "Text Input"
  ),
  
  verbatimTextOutput("my_output")
)

server <- function(input, output) {
  output$my_output <- renderPrint({
    input$my_input  
  })
}

shinyApp(ui, server)