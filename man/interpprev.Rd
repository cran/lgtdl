\name{interpprev}
\alias{interpprev}
\alias{interpprev.lgtdl}
\alias{interpprev.AsIs}
\title{ Interpolation Using the Previous Value }
\description{
  These functions provide an interpolation mechanism for objects of
  class \code{lgtdl}. The \code{AsIs} method is the vectorized version.
}
\usage{
interpprev(x, ...)
interpprev.lgtdl(x, times, cov)
interpprev.AsIs(x, ...)
}

\arguments{
  \item{x}{ \code{x} is either an object of class \code{lgtdl} or of
    class \code{AsIs}. It is the object on which interpolation is to be
    performed.  }
  \item{times}{A vector of times at which interpolation is requested.}
  \item{cov}{The name of the covariate on which interpolation is
    requested. It is only required if \code{x} has more than one
    covariate.}
}
\details{
 If objects of class \code{lgtdl} are inserted into a data frame they
 become a vector with class \code{AsIs}. In order to operate on these
 we provide a method for that class. The method is simply a vectorized
 version.
}
\value{
  \code{interpprev.lgtdl} returns a numeric vector of the interpolated
  values of the covariate at the time(s) specified by \code{times}.
  \code{interpprev.AsIs} returns a vector of interpolated values of the
  covariate. In this case the vector contains one value for each element
  \code{x}. \code{times} must be either the same length as \code{x} or
  of length one. In the latter case all interpolations are done at that
  time. 
}
\author{Robert Gentleman }
\seealso{ \code{\link{interplinear}} }

\examples{
  x1<-data.frame(time=c(1,3,5), cov=c(4,6,8))
  x2<-data.frame(time=c(11,13,15), interest=c(66,45,88))
  x1<-as.lgtdl(x1)
  x2<-as.lgtdl(x2)
  interpprev(x1, c(2,4))
  interpprev(x2, c(12, 14))
}
\keyword{smooth}
