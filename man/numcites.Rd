\name{numcites}
\alias{numcites}
\title{Get CiteUlike number of citations.}
\usage{
  numcites(doi,
    url = "http://www.citeulike.org/api/posts/for/doi/")
}
\arguments{
  \item{doi}{DOI of the article.}
}
\value{
  Number of citations to the DOI.
}
\description{
  Get CiteUlike number of citations.
}
\examples{
\dontrun{
numcites(doi = '10.1371/journal.pmed.0020124')
}
}

