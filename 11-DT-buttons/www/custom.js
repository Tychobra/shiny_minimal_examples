$(document).on('click', "#main_table .btn", function () {
  // this.id is of form 'edit_<row num>' or 'delete_<row num>'
  Shiny.onInputChange('tbl_btn', this.id);
  Shiny.onInputChange('tbl_btn_trigger', Math.random());
});
