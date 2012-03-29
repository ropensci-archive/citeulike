\name{byuser}
\alias{byuser}
\title{Search CiteUlike.}
\usage{
  byuser(user = NA,
    url = "http://www.citeulike.org/json/user?q=")
}
\arguments{
  \item{user}{The username to search.}

  \item{url}{Base URL for the API call. Don't change.}
}
\value{
  Number of records in CiteULike associated with the
  username, and the actual records.
}
\description{
  Search CiteUlike.
}
\examples{
\dontrun{
temp <- byuser('cbonfil')
temp$numrecords # number of records
temp$records[1:3] # some of the actual records
}
}

