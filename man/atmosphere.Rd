% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{atmosphere}
\alias{atmosphere}
\alias{show_atmosphere}
\alias{show_graticules}
\title{Atmosphere & Grid}
\usage{
show_atmosphere(globe, show = TRUE)

show_graticules(globe, show = TRUE)
}
\arguments{
\item{globe}{An object of class \code{globe} as returned by
\code{\link{create_globe}}, or an object of class \code{globeProxy}
as returned by \code{\link{globeProxy}}.}

\item{show}{Whether to show the atmosphere or graticules.}
}
\description{
Customise atmosphere (bright halo surrounding the globe) 
and graticules grid demarking latitude and longitude lines 
at every 10 degrees.
}
\examples{
# basic use case
img <- image_url("blue-marble")
create_globe() \%>\% 
  globe_img_url(img) \%>\% 
  show_atmosphere(FALSE) \%>\% 
  show_graticules(TRUE)

# use in shiny
library(shiny)

ui <- fluidPage(
  radioButtons("show", "Atmosphere", choices = c(TRUE, FALSE)),
  globeOutput("globe")
)

server <- function(input, output){
  output$globe <- renderGlobe({
    create_globe() \%>\% 
      globe_img_url()
  })

  observeEvent(input$show, {
    globeProxy("globe") \%>\% 
      show_atmosphere(input$show)
  })
}

\dontrun{shinyApp(ui, server)}

}
