\name{PlotRegionHighlighter-package}
\alias{PlotRegionHighlighter-package}
\alias{PlotRegionHighlighter}
\docType{package}
\title{Creates an envelope that surrounds a set of points plotted in two dimensions}
\description{Create an envelope surrounding a set of points in a two-dimensional space. The shape in the union of a polygon and circles surrounding each point. The polygon is determined using an extension of methods to determine the tangent line to two circles and is the solution to the multiple pulley problem. The points can used to highlight a region in a two-dimensional space.}
\details{
\tabular{ll}{
Package: \tab PlotRegionHighlighter\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-04-04\cr
License: \tab GPL-2\cr
}
The generateEnvelope function is called with a two-column matrix with each row containing the xy coordinates for each point. Along with 
vector of radii for the circles surrounding each point, the function generates a list of points defining the envelope surrounding the set of points. 
The envelope is computed as if it were specifying a pulley that passed around the circles with a minimum perimenter and minimum area for a convex shape containing
all the circles. The algorithm uses formulas for calculating the set of lines that is tangent to a pair of circles. 
}
\author{
Elliot Noma

Maintainer: Elliot Noma <noma@garrettassetmanagement.com>
}
\references{http://en.wikipedia.org/wiki/Belt_problem}
\keyword{ package }
