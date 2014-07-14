\name{lm.estimate}
\alias{lm.estimate}
\title{
Linear Model Fitting
}
\description{
To estimating the coefficients by fitting the linear model
}
\usage{
lm.estimate(obj.train, fit.cut.train = 5)
}
\arguments{
  \item{obj.train}{
an object of training data generated from \code{\link{index.preprocess}} and \code{\link{counts.preprocess}}
}
  \item{fit.cut.train}{
the minimum counts of the data points used for model fitting, the default for spike-in training dataset is 5.
}
}
\details{
It models the influence on the local sequence from the dissimilarity of spike-in transcripts measurement. The region of positions around hexamer primers can be defined by the variable "word". 
}
\value{
a 1-column matrix of coefficients will be returned.
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\author{
Guoshuai Cai
}
\seealso{
\code{\link{index.preprocess}},\code{\link{counts.preprocess}}
}
\examples{
word<-81

data(train.dat.seq)
data(train.dat.counts)

train.index<-index.preprocess(train.dat.seq,word)
obj.train<-counts.preprocess(train.dat.counts)
obj.train[["index"]]<-train.index

coe.lm<-lm.estimate(obj.train,fit.cut.train=5)
}
\keyword{fitting}
