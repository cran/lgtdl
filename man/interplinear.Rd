\name{interplinear}
\alias{interplinear}
\alias{interplinear.lgtdl}
\alias{interplinear.AsIs}
\title{ A function to provide estimates of the response for a
  longitudinal data object. The estimate is obtained by linear
  interpolation from the preceding and following observations. }
\description{
  A linear interpolation, using \code{\link{approx}}, is used to obtain
  estimates of the covariate at times other than those observed.
}
\usage{
interplinear(x, ...)
interplinear.lgtdl(x, time, cov = NULL, ...)
interplinear.AsIs(x, ...)
}

\arguments{
  \item{x}{The \code{lgtdl} object that is to be interpolated. }
  \item{time}{The time(s) at which interpolation is desired.}
  \item{cov}{The name of the covariate in the \code{lgtdl} object on
    which the interpolation should be based. It is not required if there
    is only one covariate.}
  \item{\dots}{ Ignored. }
}
\value{
  A vector containing the interpolated estimates of the covariate values
  at the requested times.
}
\author{ Robert Gentleman }
\seealso{ \code{\link{interpprev}} }

\examples{
  x1<-data.frame(time=c(1,3,5), cov=c(4,6,8))
  x2<-data.frame(time=c(11,13,15), interest=c(66,45,88))
  x1<-as.lgtdl(x1)
  x2<-as.lgtdl(x2)
  interpprev(x1, 4)
  interpprev(x2, c(12, 14))
}
\keyword{smooth}
