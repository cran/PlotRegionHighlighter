\name{findExteriorTangents}
\alias{findExteriorTangents}
\title{Determine the set of tangents to a pair of circles that do not intersect other circles or pass between circles}
\description{Determine the points of tangency for lines tangent to a pair of circles. Keep only tangents that do not intersect other circles or pass between circles}
\usage{findExteriorTangents(center, r, i, j, rrange = c(-1, 1), krange = c(1, -1))}
\arguments{
  \item{center}{a two-column numeric matrix of xy coordinates for center points for the set of circles}
  \item{r}{a numeric vector of the radii of the circles}
  \item{i}{a numeric pointer to a row in the matrix of xy coordinates for the centers. This points to the first circle of the pair}
  \item{j}{a numeric pointer to a row in the matrix of xy coordinates for the centers. This points to the second circle of the pair}
  \item{rrange}{a numeric value or two item numeric vector defining the tangents to be computed. Values are -1, 1, or c(1,-1). -1 returns the tangents that cross between the circles. 1 returns those that do not cross between the circles}
  \item{krange}{a numeric value or two item numeric vector defining the tangents to be computed. Values are -1, 1, or c(1,-1).}
}
\value{a matrix with pairs of rows containing the starting and ending tangent points for line segments. Rows are identified by the circle on which they are located and the circle on which the other end point lies.}
\references{http://en.wikipedia.org/wiki/Belt_problem}
\author{Elliot Noma}
