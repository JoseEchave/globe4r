% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{globe_img}
\alias{globe_img}
\alias{globe_img_url}
\alias{bump_img_url}
\title{Globe Material}
\usage{
globe_img_url(globe, url = image_url())

bump_img_url(globe, url = image_url("topology"))
}
\arguments{
\item{globe}{An object of class \code{globe} as returned by
\code{\link{create_globe}}, or an object of class \code{globeProxy}
as returned by \code{\link{globeProxy}}.}

\item{url}{URL of the image layer to use.}
}
\description{
Getter/setter for the URL of the image used in the material 
that wraps the globe. If no image is provided, the globe is 
represented as a black sphere. Also provides API to create a 
bump map in the material, to represent the globe's terrain.
}
\examples{
# basic
create_globe() \%>\% 
  bump_img_url()

# use in shiny
library(shiny)

ui <- fluidPage(
  actionButton("btn", "Add img"),
  globeOutput("globe")
)

server <- function(input, output){
  output$globe <- renderGlobe({
    create_globe()
  })

  observeEvent(input$btn, {
    globeProxy("globe") \%>\% 
      bump_img_url()
  })
}

\dontrun{shinyApp(ui, server)}

}
