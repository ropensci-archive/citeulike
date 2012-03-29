\name{posts}
\alias{posts}
\title{Get CiteUlike number of posts for a given DOI.}
\usage{
  posts(doi = NA,
    url = "http://www.citeulike.org/api/posts/for/doi/")
}
\arguments{
  \item{doi}{DOI of the article.}

  \item{url}{Base URL for the API call. Don't change.}
}
\value{
  Number of posts citing the DOI.
}
\description{
  Get CiteUlike number of posts for a given DOI.
}
\examples{
\dontrun{
posts(doi = '10.1371/journal.pmed.0020124')
}
}

