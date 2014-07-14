\name{posplot}
\alias{posplot}
\title{
Correction Performance Visualization
}
\description{
Pairwise comparison matrix of the original and corrected measurements
}
\usage{
posplot(test.corrected, pos.test, n.lim = 1000, fit.cut.lr = 50)
}
\arguments{
  \item{test.corrected}{
a data matrix from \code{\link{correct.guided}} function
}
  \item{pos.test}{
a data matrix of test transcripts' position information
}
  \item{n.lim}{
the maximum number of log ratios points will be plotted
}
  \item{fit.cut.lr}{
the minimum number of sequencing reads points will be used for log ratio plotting
}
}
\details{
Distributions of sequencing reads of samples measured before and after correction will be plotted with the positions on the x-axis and the number of sequencing reads as bars. Also patterns of the fluctuation factor, log ratio before the correction (black line) and log ratio after the correction (blue line) will be plotted.
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
\code{\link{correct.guided}}, \code{\link{counts.preprocess}}
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

posplot(test.corrected,obj.test$pos)
}
\keyword{visualization}
