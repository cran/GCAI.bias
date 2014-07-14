\name{GCAI.bias-package}
\alias{GCAI.bias-package}
\alias{GCAI.bias}
\docType{package}
\title{
Guided Correction Approach for Inherited bias (GCAI.bias)
}
\description{
Many inherited biases and effects exists in RNA-seq due to both biological and technical effects. We observed the biological variance of testing target transcripts can influence the yield of sequencing reads, which might indicate a resource competition existing in RNA-seq. We developed this package to capture the bias depending on local sequence and perform the correction of this type of bias by borrowing information from spike-in measurement.
}
\details{
\tabular{ll}{
Package: \tab GCAI-bias\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-07-14\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
This package is used for correcting bias introduced by the biological variance of sample transcripts sources. Batch effect in measurement of the same biological sample can be corrected by this package directly. However, spike-in are required to correct bias between different biological samples. For strand specific RNA-seq, antisense and sense reads should be corrected separately. Sequencing reads on each base pair are required to be formatted as train.dat.seq, train.dat.counts, test.dat.seq and test.dat.counts objects. Coefficients of local sequence will be estimated in lm.estimate and they will be used to correct bias by correct.guided function. Visualization of coefficients and correcting performance can be achieved by coeplot, corplot and posplot.
}
\author{
Guoshuai Cai

Maintainer: Guoshuai Cai <GCAI.bioinfo@gmail.com>
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\keyword{ 
package
RNA-seq
bias
Spike-in
 }
\examples{

#initialize index matrix
word<-81
word.vec<-c("A","T","C","G")
pos.vec<-c((-(word-1)/2):((word-1)/2))

obj.index<-index.mat.generation(word.vec,pos.vec)

#train

data(train.dat.seq)
data(train.dat.counts)

train.index<-index.preprocess(train.dat.seq,word)
obj.train<-counts.preprocess(train.dat.counts)
obj.train[["index"]]<-train.index

coe.lm<-lm.estimate(obj.train,fit.cut.train=5)

coeplot(coe.lm,obj.index)

#test,correct

data(test.dat.seq)
data(test.dat.counts)

test.index<-index.preprocess(test.dat.seq,word)
obj.test<-counts.preprocess(test.dat.counts)
obj.test[["index"]]<-test.index

test.corrected<-correct.guided(coe.lm,obj.test)

corplot(test.corrected)
posplot(test.corrected,obj.test$pos)
}
