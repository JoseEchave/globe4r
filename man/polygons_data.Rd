% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polygons.R
\name{polygons_data}
\alias{polygons_data}
\alias{polygons_label}
\alias{polygons_geometry}
\alias{polygons_cap_color}
\alias{polygons_side_color}
\alias{polygons_altitude}
\alias{polygons_transition}
\alias{polygons_on_click}
\alias{polygons_on_right_click}
\alias{polygons_on_hover}
\title{Polygons Raw API}
\usage{
polygons_data(globe, data)

polygons_label(globe, label = "name")

polygons_geometry(globe, geometry = "geometry")

polygons_cap_color(globe, color = constant("ffffaa"))

polygons_side_color(globe, color = constant("ffffaa"))

polygons_altitude(globe, altitude = 0.1)

polygons_transition(globe, ms = 1000L)

polygons_on_click(globe, func)

polygons_on_right_click(globe, func)

polygons_on_hover(globe, func)
}
\arguments{
\item{globe}{An object of class \code{globe} as returned by
\code{\link{create_globe}}, or an object of class \code{globeProxy}
as returned by \code{\link{globeProxy}}.}

\item{data}{A data.frame containing arcs data.}

\item{label}{Name containing label in \code{data} list
or JavaScript function.}

\item{geometry}{Name containing geometry in \code{data} list 
or JavaScript function.}

\item{color}{A JavaScript function or \code{\link{constant}}, or
name containing color in \code{data} list.}

\item{altitude}{Name containing altitude in \code{data} list,
a numeric value, or JavaScript function.}

\item{ms}{Number of milliseconds. A value of 0 will size the 
cone immediately to their final altitude. New polygons are 
animated by rising them from the ground up.}

\item{func}{JavaScript function as character vector.}
}
\description{
Raw API to polygons layer.
}
