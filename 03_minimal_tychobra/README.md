# Minimal Tychobra Shiny app

Single file "app.R" are very useful for quick and simple apps where the code needs to be in a single file (e.g. a GitHub gist).  For most Shiny apps, a little file structure helps the people understand what is going on.  At Tychobra our minimal Shiny app has a "global.R", "server.R", and a "ui.R".  These 3 files are all automatically recognized by Shiny.  Shiny knows to pass the content of "ui.R" to the `ui` argument of shinyApp, "server.R" to the `server` argument, and "global.R" to the `onStart` argument.

All apps from here on out will use, at a minimum, these 3 files.

## TODO: Scoping of global.R, server.R, and ui.R

