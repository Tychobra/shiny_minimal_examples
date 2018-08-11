# TBD-webshot

Take a screen shot of a shiny app

To run this locally we need to first explicitly set the port that the Shiny app will run on.  If we do not set the port, Shiny will randomly set the port number and we will not know how to tell webshot where to look take a picture.

```
options(shiny.port = 3333)
```

This works once the app is deployed, but it is not working locally at the moment.
