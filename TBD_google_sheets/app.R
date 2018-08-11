library("shiny")
library("googlesheets")
library("DT")
library("dplyr")

peeps <- gs_title("my-time") %>% 
           gs_read()

ui <- fluidPage(
  tags$head(
    tags$style(
      HTML("#shiny-modal { top: 100px}")
    )
  ),
  titlePanel("Google Sheets"),
  DT::datatable(peeps)
)

server <- function(input, output, session) {
  
  
  
}

shinyApp(ui, server)