\name{corplot}
\alias{corplot}
\title{
Pairwise Correlation Calculation and Visualization
}
\description{
Pairwise comparison matrix of the original and corrected measurements
}
\usage{
corplot(mat)
}
\arguments{
  \item{mat}{
a data matrix from \code{\link{correct.guided}} function
}
}
\details{
Pairwise plots of sequencing reads mapped to each base pair on the log10 scale will be shown in the bottom panel; Pairwise Pearson correlation coefficients calculated on data points larger than 1 will be shown in the top panel.
}
\value{
a plot produced on the current graphic device
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\author{
Guoshuai Cai
}
\seealso{
\code{\link{correct.guided}}
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

corplot(test.corrected)
}
\keyword{visualization}
