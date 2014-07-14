\name{index.preprocess}
\alias{index.preprocess}
\title{
Binary Index Matrix Generation
}
\description{
To initiate the binary variable matrix for linear model  
}
\usage{
index.preprocess(mat.seq, word)
}
\arguments{
  \item{mat.seq}{
a dataframe of train.dat.seq or test.dat.seq
}
  \item{word}{
the number of local sequence positions
}
}
\value{
a binary index matrix will be returned.
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\author{
Guoshuai Cai
}
\seealso{
\code{\link{train.dat.seq}},\code{\link{test.dat.seq}}
}
\examples{
word<-81

data(train.dat.seq)
train.index<-index.preprocess(train.dat.seq,word)

data(test.dat.seq)
test.index<-index.preprocess(test.dat.seq,word)
}
\keyword{initialization}
