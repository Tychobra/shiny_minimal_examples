library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(disable = T),            
  dashboardSidebar(disable = T),
  dashboardBody(
    fluidRow(
      box(
        width=12,
        h3(
          strong("Actions on datatable with buttons"),
          align="center"
        ),
        hr(),
        ##Rendering the datatable
        column(
          12,
          dataTableOutput("main_table")
        )
      )
    ),
    tags$script(src = "custom.js")
  )
)