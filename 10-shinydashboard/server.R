function(input, output) {
  
  output$plot_out <- renderHighchart({
    hchart(diamonds$price)
  })
  
  output$take_screen_shot <- downloadHandler(
    filename = function() {
        paste0("screen-shot-", Sys.Date(), ".png")
      },
      content = function(file) {
        webshot("https://www.google.com", file = file)
      }
  )
  
}