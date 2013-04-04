\name{drawArc}
\alias{drawArc}
\title{Compute the points on an arc starting with the coordinates of the starting and ending points relative to the circle center}
\description{Compute the points on an arc based on the coordinates of the starting and ending points}
\usage{drawArc(x, y, center, r, ...)}
\arguments{
  \item{x}{a two-item numeric vector for the xy coordinates of the starting point relative to the center point}
  \item{y}{a two-item numeric vector for the xy coordinates of the ending point relative to the center point}
  \item{center}{a two-item numeric vector for the xy coordinates of the center point for the arc}
  \item{r}{a numeric value for the radius of the circle}
  \item{\dots}{Optional argment to specify the number of points on the arc}
}
\value{a two-column matrix of xy coordinates for points along the arc}
\author{Elliot Noma}
