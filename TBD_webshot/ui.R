fluidPage(
  fluidRow(
    column(
      12,
      h1("Take A Screenshot")
    ),
    br()
  ),
  fluidRow(
    column(
      12,
      class = "text-center",
      div(
        class = "camera",
        tags$a(
          id = "take_screen_shot", 
          class = "btn btn-default shiny-download-link camera", 
          href = "", 
          target = "_blank", 
          download = NA, 
          icon("camera", class = "fa-5x"), 
          label = "",
          style = "margin: 10px; padding: 4px 10px; color: #333"
        )
      )
    )
  )
)
