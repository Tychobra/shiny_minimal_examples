header <- dashboardHeader()

sidebar <- dashboardSidebar(
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