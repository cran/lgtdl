\name{getcov}
\alias{getcov}
\alias{getcov.lgtdl}
\title{ A function to extract the covariate from an object of class
  lgtdl. }
\description{
  The covariate component of the \code{lgtdl} object is returned.
}
\usage{
getcov(x, ...)
getcov.lgtdl(x, cov)
}

\arguments{
  \item{x}{ The \code{lgtdl} object. }
  \item{\dots}{The name of the covariate to be extracted. }
  \item{cov}{The name of the covariate to be extracted.  } 
}

\value{
The covariate, as either a matrix or vector, is returned.
}

\author{ Robert Gentleman }

\seealso{  \code{\link{lgtdl}}, \code{\link{as.lgtdl}} }

\examples{
  x1<-data.frame(time=c(1,3,5), cov=c(4,6,8))
  x2<-data.frame(time=c(11,13,15), interest=c(66,45,88))

  x1<-as.lgtdl(x1)
  x2<-as.lgtdl(x2)
  getcov(x1)
  getcov(x2)
}
\keyword{utilities}
