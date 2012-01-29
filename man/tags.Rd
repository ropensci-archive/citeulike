\name{tags}
\alias{tags}
\title{Get CiteUlike tags for a DOI.}
\usage{
  tags(doi, summary = FALSE, wordcloud = FALSE,
    url = "http://www.citeulike.org/api/posts/for/doi/")
}
\arguments{
  \item{doi}{DOI of the article.}
}
\value{
  Tags on the DOI.
}
\description{
  Get CiteUlike tags for a DOI.
}
\examples{
\dontrun{
tags(doi = '10.1371/journal.pmed.0020124')
tags(doi = '10.1371/journal.pmed.0020124', summary=TRUE)
tags(doi = '10.1371/journal.pmed.0020124', TRUE, TRUE)
tags(doi = '10.1371/journal.pmed.0020124', wordcloud=TRUE)
}
}

