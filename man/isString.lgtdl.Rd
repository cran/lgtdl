\name{toString.lgtdl}
\alias{toString.lgtdl}

\title{ Produce a character string suitable for printing. }
\description{
 Data frames can contain \code{lgtdl} objects as elements. When the data
 frame is printed this function provides a suitable string for printing.
}
\usage{
\S3method{toString}{lgtdl}(x, width, ...)
}

\arguments{
  \item{x}{ The object to be formated. }
  \item{width}{ To control the width of the returned string-ignored. }
  \item{\dots}{ Ignored. }
}

\value{
  A character string. Currently it is \code{"lgtdl, length = "} with the
  length of the \code{time} component added.
}
\author{ Robert Gentleman }
\seealso{ \code{toString} }

\keyword{utilities }
