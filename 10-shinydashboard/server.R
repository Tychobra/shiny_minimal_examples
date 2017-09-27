function(input, output) {
  
  output$plot_out <- renderHighchart({
    hchart(diamonds$price)
  })
}