header <- dashboardHeader(
  title = "shinydashboard"
)

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Tab 2", tabName = "tab_2", icon = icon("th"))  
  )
)


body <- dashboardBody(
  tabItems(
    tabItem(
      "dashboard",
      fluidRow(
        box(
          width = 9,
          h1("Box 1")
        ),
        box(
          width = 3,
          h1("Box 2")
        )
      )
    ),
    tabItem(
      "tab_2",
      h1("Tab 2")
    )
  )
)


dashboardPage(
  header,
  sidebar,
  body
)