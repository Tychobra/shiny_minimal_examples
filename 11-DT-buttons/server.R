library(shinydashboard)
library(DT)
library(stringr)

#http://enhancedatascience.com/2017/03/01/three-r-shiny-tricks-to-make-your-shiny-app-shines-33-buttons-to-delete-edit-and-compare-datatable-rows/
function(input, output) {
  
  ###Creating reactive values since we will need to modify the table with events and triggers
  vals=reactiveValues(
    Data = data.frame(
      Brands=paste0("Brand", 1:10),
      Forecasted_Growth=sample(1:20, 10),
      Last_Year_Purchase=round(rnorm(10, 1000, 1000) ^ 2),
      Contact=paste0("Brand", 1:10, "@email.com")
    )
  )
  
  output$main_table <- renderDataTable({
    out <- vals$Data
    
    out[["Actions"]]<- paste0(
      '<div class="btn-group" role="group" aria-label="Basic example">
       <button class="btn btn-primary edit_btn" id = edt_', 1:nrow(vals$Data), '><i class="fa fa-pencil-square-o"></i></button>
       <button class="btn btn-danger delete_btn" id = del_', 1:nrow(vals$Data), '><i class="fa fa-trash-o"></i></button></div>'
    )
    datatable(
      out,
      rownames = FALSE,
      escape=F
    )
  })
  
  observeEvent(input$tbl_btn_trigger, {
    hold <- input$tbl_btn
    btn_action_type <- substr(hold, 1, 3)
    n <- nchar(hold)
    btn_row_num <- substr(hold, 5, n) %>%
                     as.numeric()
    if (btn_action_type == "del") {
      vals$Data <- vals$Data[-btn_row_num, ]
    } else if (btn_action_type == "edt") {
      print("modify")
      #showModal(modal_modify)
    }
  })
}
