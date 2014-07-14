\name{correct.guided}
\alias{correct.guided}
\title{
Guided Correction
}
\description{
Guided by the coefficients estimated from \code{\link{lm.estimate}}, the bias correction could be performed. 
}
\usage{
correct.guided(coe.train, obj.test)
}
\arguments{
  \item{coe.train}{
a 1-column matrix of coefficients estimated from training data by \code{\link{lm.estimate}}
}
  \item{obj.test}{
an object of testing dataset generated from \code{\link{counts.preprocess}} and \code{\link{index.preprocess}}
}
}
\details{
Besides of corrected reads, \eqn{\beta\mathit{x}} will be also calculated.
}
\value{
a matrix will be returned containing reads counts before and after correction and \eqn{\beta\mathit{x}} as well.
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\author{
Guoshuai Cai
}
\seealso{
\code{\link{lm.estimate}}, \code{\link{counts.preprocess}}, \code{\link{index.preprocess}}
}
\examples{
word<-81

data(obj.index)
data(train.dat.seq)
data(train.dat.counts)
data(test.dat.seq)
data(test.dat.counts)

#train

train.index<-index.preprocess(train.dat.seq,word)
obj.train<-counts.preprocess(train.dat.counts)
obj.train[["index"]]<-train.index

coe.lm<-lm.estimate(obj.train,fit.cut.train=5)

#test

test.index<-index.preprocess(test.dat.seq,word)
obj.test<-counts.preprocess(test.dat.counts)
obj.test[["index"]]<-test.index

test.corrected<-correct.guided(coe.lm,obj.test)
}
\keyword{correction}
