function(input, output) {
  output$my_table <- renderDT({
    datatable(
      iris,
      rownames = FALSE
    )
  })
}