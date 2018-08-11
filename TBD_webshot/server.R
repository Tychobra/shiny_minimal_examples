function(input, output, session) {
  output$take_screen_shot <- downloadHandler(
    filename = function() {
      paste0("screen-shot-", Sys.Date(), ".png")
    },
    content = function(file) {
      webshot("http://127.0.0.1:3333", file = file)
    }
  )  
} 
