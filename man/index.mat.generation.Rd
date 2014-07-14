\name{index.mat.generation}
\alias{index.mat.generation}
\title{
Index Matrix Generation
}
\description{
To generate S3 class of index
}
\usage{
index.mat.generation(word.vec, pos.vec)
}
\arguments{
  \item{word.vec}{
a vector of nucleotides, the default is c("A","T","C","G").
}
  \item{pos.vec}{
a vector of positions of local sequence, the default is -40 ~ 40.
}
}
\value{
index.mat.generation return a list containing components:
\item{\bold{\code{mat}}}{a matrix with nucleotides as row names and positions as column names will be returned, a \eqn{4\times81} matrix will be returned with default arguments.}
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\author{
Guoshuai Cai
}
\examples{
word<-81
word.vec<-c("A","T","C","G")
pos.vec<-c((-(word-1)/2):((word-1)/2))

obj.index<-index.mat.generation(word.vec,pos.vec)
}
\keyword{initialization}
