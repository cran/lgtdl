\name{as.lgtdl}
\alias{as.lgtdl}
\alias{is.lgtdl}
\title{Longitudinal Class}
\description{
  \code{as.lgtdl} coerces its argument to class \code{lgtdl} if possible.
  \code{is.lgtdl} returns \code{TRUE} if its argument is of class
  \code{lgtdl} and \code{FALSE} otherwise.
}
\usage{
as.lgtdl(x, row.names=NULL)
is.lgtdl(x)
}
\alias{is.lgtdl}

\arguments{
  \item{x}{An object which is coerced to a \code{lgtdl} object for
    \code{as.lgtdl} or tested with \code{is.lgtdl}.}
  \item{row.names}{An optional set of row names to be used for the names
    of the covariates in the resulting \code{lgtdl} object.}
}
\value{
  \item{is.lgtdl} {Returns \code{TRUE} if its argument is of class
    \code{lgtdl}.}
  \item{as.lgtdl} {Returns an object of class \code{lgtdl}.}
}
\author{Robert Gentleman}

\seealso{ \code{\link{plot.lgtdl}}, \code{\link{lgtdl}} }

\examples{
  x1<-data.frame(time=c(1,3,5), cov=c(4,6,8))
  x2<-data.frame(time=c(11,13,15), interest=c(66,45,88))

  x1<-as.lgtdl(x1)
  x2<-as.lgtdl(x2)

  is.lgtdl(TRUE)
}
\keyword{manip}
