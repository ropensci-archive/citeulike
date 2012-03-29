\name{users}
\alias{users}
\title{Get CiteUlike usernames or groups that cite a given DOI.}
\usage{
  users(doi = NA,
    url = "http://www.citeulike.org/api/posts/for/doi/")
}
\arguments{
  \item{doi}{DOI of the article.}

  \item{url}{Base URL for the API call. Don't change.}
}
\value{
  Character vector of usernames or group names.
}
\description{
  Get CiteUlike usernames or groups that cite a given DOI.
}
\examples{
\dontrun{
users(doi = '10.1371/journal.pmed.0020124')
}
}

