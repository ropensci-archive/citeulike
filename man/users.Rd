\name{users}
\alias{users}
\title{Get CiteUlike usernames or groups that cite the DOI.}
\usage{
  users(doi,
    url = "http://www.citeulike.org/api/posts/for/doi/")
}
\arguments{
  \item{doi}{DOI of the article.}
}
\value{
  Character vector of usernames or group names.
}
\description{
  Get CiteUlike usernames or groups that cite the DOI.
}
\examples{
\dontrun{
users(doi = '10.1371/journal.pmed.0020124')
}
}

