# Connecting inputs and outputs

This single file Shiny app connects a `textInput()` with a `renderPrint()` and a `verbatimTextOutput()`.

`renderPrint()` and `verbatimTextOutput()` can be useful for debuggine because the R object is not transformed before it is displayed in the browser.