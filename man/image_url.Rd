% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convenience.R
\name{image_url}
\alias{image_url}
\title{Image URLs}
\usage{
image_url(name = c("night", "blue-marble", "dark", "topology"))
}
\arguments{
\item{name}{Name of image to return.}
}
\value{
URL to \url{https://jsdelivr.net} image.
}
\description{
Convenience function to fetch URLs for \code{\link{globe_img_url}}, 
and \code{\link{bump_img_url}}.
}
\examples{
create_globe() \%>\% 
  globe_img_url(image_url("dark"))

}
