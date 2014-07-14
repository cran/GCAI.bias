\name{counts.preprocess}
\alias{counts.preprocess}
\title{
Data Object Generation
}
\description{
To extract position and count information from \code{\link{train.dat.counts}} or \code{\link{test.dat.counts}}
}
\usage{
counts.preprocess(mat.counts)
}
\arguments{
  \item{mat.counts}{
a dataframe of train.dat.counts or test.dat.counts
}
}
\value{
counts.preprocess return a list containing components:
\item{\bold{\code{counts}}}{a matrix of counts}
\item{\bold{\code{pos}}}{a matrix of positions}}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\author{
Guoshuai Cai
}
\seealso{
\code{\link{train.dat.counts}},\code{\link{test.dat.counts}}
}
\examples{
data(train.dat.counts)
obj.train<-counts.preprocess(train.dat.counts)

data(test.dat.counts)
obj.test<-counts.preprocess(test.dat.counts)
}
\keyword{initialization}
