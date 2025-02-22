% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{constant}
\alias{constant}
\title{Constants}
\usage{
constant(x)
}
\arguments{
\item{x}{A constant.}
}
\description{
Wraps a constant in a JavaScript function as most
underlying JavaScript functions expect it.
}
\examples{
# create plot
g <- create_globe() \%>\% 
  globe_img_url() \%>\% 
  bars_data(quakes) \%>\% 
  bars_lat("lat") \%>\% 
  bars_lon("long")

# passing a constant straight does not work
\dontrun{bars_color(g, "red")}

# using `constant` it works
RED <- constant("red")
bars_color(g, RED)

}
