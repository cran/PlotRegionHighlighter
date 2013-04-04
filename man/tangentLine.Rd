\name{tangentLine}
\alias{tangentLine}
\title{Compute the coefficients for the line tangent to two circles}
\description{Compute the coefficients for the line ax + by + c = 0 which is tangent to circles with centers at c1 and c2 with radii r1 and r2. Call this function varying
k = -1 and +1 and r1 = r1 and -r1 to calculate the lines. There can be up to four distinct lines that are tangent to both circles.}
\usage{tangentLine(c1, c2, r1, r2, k = 1)}
\arguments{
  \item{c1}{a 2-item numeric vector containing the x and y coordinates for the first circle}
  \item{c2}{a 2-item numeric vector containing the x and y coordinates for the second circle}
  \item{r1}{a numeric value for the radius of the first circle}
  \item{r2}{a numeric value for the radius of the second circle}
  \item{k}{k=1 returns the coefficients for one of the tangent lines and k=-1 returns the coefficients for the second tangent line}
}
\details{
There are a maximum of four tangent lines for a pair of circles. These can be obtained by setting argument r1 to either r1 or -r1 and argument k to -1 or 1.
}\value{a 3-item vector containing the values for a, b and c in the equation ax + by + c = 0. Returns NULL if there is not tangent line for the input parameters}
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


require(grid)
grid.newpage()
ncircles <- 2
centers <- matrix(runif(4, min=.2, max=.8), byrow=TRUE, ncol=2)
r <- runif(ncircles,min=.10, max=.20)

colors <- rainbow(ncircles * 3 + 3)
for (i in 1:ncircles) circles<- plotCircles(centers[i,], r[i], color=colors[i])
grid.text(1:ncircles, centers[,1], centers[,2])

ii <- 0
for (r0 in r[1] * c(1,-1))
	for (k in c(1,-1)) {
		ii <- ii + 1
		tangent <- tangentLine(centers[1,], centers[2,], r0, r[2], k=k)  # compute coefficients for the tangent line, if NA, then no tangents

		if (!is.na(tangent["a"]))
			grid.abline(-tangent["c"] / tangent["b"], -tangent["a"] / tangent["b"], gp=gpar(col="blue", lwd=ii), units="npc")
	}
}
\keyword{aplot}
