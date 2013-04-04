\name{generateEnvelope}
\alias{generateEnvelope}
\title{Generate an minimum-perimeter envelope that surrounds a set of points in a graph}
\description{
The generateEnvelope function is called with the coordinates for points in the envelope along with a vector of radii for the circles surrounding each point. 
The function generates a list of points defining the envelope surrounding the entire set of points. These coordinates may be displayed using either the
line or polygon graphics commands
}
\usage{generateEnvelope(centers, r, ...)}
\arguments{
  \item{centers}{a numeric matrix with each row containing the xy coordinates for each point.}
  \item{r}{a numeric vector containing the radius of each point}
  \item{\dots}{additional parameters such as the number of points to return when defining the arcs in the envelope}
}
\value{

\item{envelopeXY}{The x and y coordinates for the points defining the envelope}
\item{tangent_Points}{The tangent points defining the transition between arcs and lines along with the angle relative to the centorid of the input points}

}
\references{http://en.wikipedia.org/wiki/Belt_problem}

\author{Elliot Noma}
\examples{
############################################################
# plot 

plotCircles <- function(center, r, color="red", ...) 
{
	a <- createCircle(center, r, ...)
	grid.polygon(x = a[,1], y = a[,2], gp=gpar(col=color, lwd=2))
	
	a
} 

ncircles <- sample(3:7,1)
centers <- matrix(runif(2*ncircles, min=.2, max=.8), byrow=TRUE, ncol=2)
r <- runif(ncircles,min=.10, max=.20)

envelope <- generateEnvelope(centers, r)
print(envelope$tangent_Points)

require(grid)
grid.newpage()
colors <- rainbow(ncircles * 3 + 3)
for (i in 1:ncircles) circles<- plotCircles(centers[i,], r[i], color=colors[i])
grid.text(1:ncircles, centers[,1], centers[,2])

# plot the envelope containing the circles

envelopeXY <- envelope$envelopeXY
segments <- envelope$tangent_Points

grid.lines(envelopeXY[,1], envelopeXY[,2], gp=gpar(col="orange", lwd=5), default.units="npc")
grid.points(segments[,"x"], segments[,"y"], pch=16, gp=gpar(col="red"), default.units="npc")

# calculate the area and perimeter of the envelope

envelopeStats <- envelopeArea_and_Perimeter(segments, centers, r)

cat("envelope area = ", envelopeStats["area"], " perimeter = ", envelopeStats["perimeter"],"\n")	
cat("circle radii = ", r, "\n")
cat("circle area = ", pi * r^2, " = ", sum(pi * r^2), "\ncircle perimenter = ",  2 * pi * r, " = ",  2 * pi * sum(r), "\n")

#################################################
# plot envelopes around two randomly generated set of points
require(grid)
grid.newpage()
ncircles <- sample(10:25,1)
centers <- matrix(runif(2*ncircles, min=.2, max=.5), byrow=TRUE, ncol=2)
r <- rep(0.1, ncircles)

envelopeXY <- generateEnvelope(centers, r)$envelopeXY
grid.polygon(envelopeXY[,1], envelopeXY[,2], gp=gpar(fill="pink", col="transparent", lwd=5), default.units="npc")
grid.points(centers[,1], centers[,2], pch=16, gp=gpar(col="black", cex=1.5), default.units="npc")

ncircles <- sample(10:20,1)
centers <- matrix(runif(2*ncircles, min=.6, max=.8), byrow=TRUE, ncol=2)
r <- rep(0.025, ncircles)

grid.points(centers[,1], centers[,2], pch=16, gp=gpar(col="blue", cex=1.5), default.units="npc")

envelopeXY <- generateEnvelope(centers, r)$envelopeXY
grid.lines(envelopeXY[,1], envelopeXY[,2], gp=gpar(col="blue", lwd=5), default.units="npc")

}
\keyword{aplot}
\keyword{cluster}
\keyword{smooth}
