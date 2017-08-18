\name{qvcalc.itempar}
\alias{qvcalc.itempar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Quasi-variances Method for Item Parameters of Item Response Models
}
\description{
  This is an S3 method for the generic function \code{qvcalc} from the
  \pkg{qvcalc} package.  It applies to objects of class \code{"itempar"}.
}
\usage{
## S3 method for class "itempar"
qvcalc(object)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
  An object of class \code{"itempar"}.  
}
}
\details{
The \code{"itempar"} object must have the full variance-covariance matrix
in its \code{"vcov"} attribute, and must have its \code{"alias"}
attribute be \code{TRUE}.  These attributes result from use of the
default arguments \code{vcov = TRUE, alias = TRUE} when the
\code{itempar} function is called.
}
\value{
  An object of class \code{"qv"}.  See \code{\link[qvcalc]{qvcalc}}.
}
\author{
  David Firth
}
\seealso{
  \code{\link[qvcalc]{qvcalc}}, \code{\link[psychotools]{itempar}}
}
\examples{
## Based on an example from ?itempar
if(require(psychotools)){
  data("VerbalAggression", package = "psychotools")
  raschmod <- raschmodel(VerbalAggression$resp2)
  ip1 <- itempar(raschmod)
  qv1 <- qvcalc(ip1)
  summary(qv1)
}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }

