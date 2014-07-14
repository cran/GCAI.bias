\name{obj.index}
\alias{obj.index}
\docType{data}
\title{
Index S3 Class
}
\description{
Index S3 class contains two objects:  a 2-dimension matrix with nucleotides as row names and positions as column names and a flatted one with 1-dimension combinations of nucleotides and positions.
}
\usage{data(obj.index)}
\format{
  The format is:

List of 2

 $ mat : num [1:4, 1:81] 0 0 0 0 0 0 0 0 0 0 ...

  ..- attr(*, "dimnames")=List of 2

  .. ..$ : chr [1:4] "A" "T" "C" "G"

  .. ..$ : chr [1:81] "-40" "-39" "-38" "-37" ...

 $ flat: chr [1:324, 1:3] "1" "2" "3" "4" ...
}
\references{
Cai G, RNA-SEQUENCING APPLICATIONS: GENE EXPRESSION QUANTIFICATION AND METHYLATOR PHENOTYPE IDENTIFICATION, Ph.D. Thesis, 2013
}
\examples{
data(obj.index)
}
\keyword{datasets}
