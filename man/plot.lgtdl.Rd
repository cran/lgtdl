\name{plot.lgtdl}
\alias{plot.lgtdl}
\title{ A function for plotting lgtdl objects. }
\description{
 A lgtdly object consists of a time component and one or more covariates
 measured or observed at the times specified in the time component. This
 function plots the covariate trajectories as lines on the y axis.
}
\usage{
plot.lgtdl(x, ...)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{ An object of class \code{\link{lgtdl}}. }
  \item{\dots}{ Optional arguments to control the plotting. }
}
\details{
  One should be able to specify values for any of the graphics
  parameters to change the appearance of the plot.
}
\value{
  No value is returned. A line plot of the longitudinal object is
  rendered on the active graphics device.
}
\author{ Robert Gentleman }

\seealso{  \code{\link{lgtdl}}}

\examples{
  x1<-data.frame(time=c(1,3,5), cov=c(4,6,8))
  x2<-data.frame(time=c(11,13,15), interest=c(66,45,88))

  x1<-as.lgtdl(x1)
  x2<-as.lgtdl(x2)
  plot(x1)
  plot(x2)

}
\keyword{hplot}
