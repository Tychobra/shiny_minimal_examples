header <- dashboardHeader(
  tags$li(
    class = "dropdown",
    # place inside div to avoid default :hover, :focus, and :active behavrior
    div(
      class = "camera",
      tags$a(
        id = "take_screen_shot", 
        class = "btn btn-default shiny-download-link camera", 
        href = "", 
        target = "_blank", 
        download = NA, 
        icon("camera"), 
        label = "",
        style = "margin: 10px; padding: 4px 10px; color: #333"
      )
    )
  )
)

sidebar <- dashboardSidebar(
  useShinyjs(),
  sidebarUserPanel("User Name",
                   subtitle = a(href = "#", icon("circle", class = "text-success"), "Online"),
                   # Image file should be in www/ subdir
                   image = "userimage.png"
  ),
  sidebarSearchForm(label = "Enter a number", "searchText", "searchButton"),
  sidebarMenu(
    # Setting id makes input$tabs give the tabName of currently-selected tab
    id = "tabs",
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Widgets", icon = icon("th"), tabName = "widgets", badgeLabel = "new",
             badgeColor = "green"),
    menuItem("Charts", icon = icon("bar-chart-o"),
             menuSubItem("Sub-item 1", tabName = "subitem1"),
             menuSubItem("Sub-item 2", tabName = "subitem2")
    )
  )
)

body <- dashboardBody(
  tabItems(
    tabItem(
      "dashboard",
      fluidRow(
        tabBox(
          width = 9,
          tabPanel(
            title = "Panel 1",
            fluidRow(
              column(
                width = 12,
                box(
                  width = 12,
                  title = "more info hear",
                  collapsible = TRUE,
                  collapsed = TRUE,
                  h1("Content")
                ),
                column(
                  width = 12,
                  highchartOutput("plot_out")
                ),
                box(
                  width = 12,
                  title = "more info hear",
                  collapsible = TRUE,
                  collapsed = TRUE,
                  h1("Content")
                )
              )
            )
          )
        ),
        box(
          width = 3,
          radioGroupButtons(
            inputId = "btn",
            choices = c("one", "two")
          )
        )
      )
    )
  )
)


dashboardPage(
  header,
  sidebar,
  body
)