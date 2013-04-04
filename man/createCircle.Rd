\name{createCircle}
\alias{createCircle}
\title{A set of points defining a circle or an arc}
\description{A set of xy coordinates defining a circle or an arc on the circle}
\usage{createCircle(center, r, n = 40, begin = 0, end = 2 * pi)}
\arguments{
  \item{center}{a two-item vector of the x and y coordinates of the circle center}
  \item{r}{a numeric value defining the radius of the circle}
  \item{n}{a numeric value defining the number of points on the circle}
  \item{begin}{a numeric value for the starting angle of the circle or arc in radians}
  \item{end}{a numeric value for the ending angle of the circle or arc in radians}
}
\value{a two-column matrix of xy coordinates for points on the circle or arc}
\author{Elliot Noma}
