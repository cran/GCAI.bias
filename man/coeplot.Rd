\name{coeplot}
\alias{coeplot}
\title{
Estimated Coefficients Visualization
}
\description{
To plot estimated coefficients against their corresponding positions
}
\usage{
coeplot(coe.lm, obj.index, ylim = c(-1, 1))
}
\arguments{
  \item{coe.lm}{
a 1-column matrix of coefficients estimated from \code{\link{lm.estimate}}
}
  \item{obj.index}{
an object of index generated from \code{\link{index.mat.generation}}
}
  \item{ylim}{
the extremes of the range of y axis
}
}
\details{
5 end of the mapped reads will be labeled 0 on x axis. Nucleotide A will be colored in red, T will be in yellowgreen, C will be in green and G will be in blue as the baseline. 
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
\note{
index object should match the length of coe.lm
}
\seealso{
\code{\link{lm.estimate}},\code{\link{index.mat.generation}}
}
\examples{
word<-81

data(obj.index)
data(train.dat.seq)
data(train.dat.counts)

train.index<-index.preprocess(train.dat.seq,word)
obj.train<-counts.preprocess(train.dat.counts)
obj.train[["index"]]<-train.index

coe.lm<-lm.estimate(obj.train,fit.cut.train=5)

coeplot(coe.lm,obj.index)
}
\keyword{visualization}
