\name{tags}
\alias{tags}
\title{Get CiteUlike tags for a DOI.}
\usage{
  tags(doi = NA, summary = FALSE, wc = FALSE,
    url = "http://www.citeulike.org/api/posts/for/doi/")
}
\arguments{
  \item{doi}{DOI of the article.}

  \item{summary}{Print summary data.frame of tags and
  counts.}

  \item{wc}{Make wordcloud or not (Defaults to FALSE). Uses
  the wordcloud package.}

  \item{url}{Base URL for the API call. Don't change.}
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
tags(doi = '10.1371/journal.pmed.0020124', wc=TRUE)
}
}

