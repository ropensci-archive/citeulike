\name{culsearch}
\alias{culsearch}
\title{Search CiteUlike.}
\usage{
  culsearch(query = NA,
    url = "http://www.citeulike.org/json/search/all?q=")
}
\arguments{
  \item{query}{query to give to API call.}

  \item{url}{Base URL for the API call. Don't change.}
}
\value{
  Number of records in CiteULike associated with the
  search, and the actual records.
}
\description{
  Search CiteUlike.
}
\examples{
\dontrun{
temp <- culsearch('evolution')
temp$numrecords # number of records
temp$records[1:3] # some of the actual records
}
}

