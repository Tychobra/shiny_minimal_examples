# Connecting inputs and outputs

This single file Shiny app has a `textInput()` (1) which send user input the the `server()` (2) function.  Inside the server function there is a `renderPrint()` (3) which sennds output back to the ui through a `verbatimTextOutput()` (4).
