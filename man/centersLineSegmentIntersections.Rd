\name{centersLineSegmentIntersections}
\alias{centersLineSegmentIntersections}
\title{Determine if a line intersects one or more line segments}
\description{Determine if a line intersects one or more line segments. The segments are all pairwise combinations of points from a set of points}
\usage{centersLineSegmentIntersections(tangent, centers)}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tangent}{a three-item numeric vector containing the coefficients, a, b and c for a line in two-dimensions defined by ax + by + c = 0}
  \item{centers}{a two-column numeric matrix containing the x and y coordinates for a set of points to be used as the endpoints for the line segments}
}

\value{a Boolean variable. FALSE if the line intersects any of the segments. TRUE otherwise}
\author{Elliot Noma}
