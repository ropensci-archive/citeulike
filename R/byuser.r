#' Search CiteUlike.
#' @import RCurl RJSONIO
#' @param user The username to search.
#' @param url Base URL for the API call. Don't change.
#' @return Number of records in CiteULike associated with the username, and the 
#'  actual records.
#' @export
#' @examples \dontrun{
#' temp <- byuser('cbonfil')
#' temp$numrecords # number of records
#' temp$records[1:3] # some of the actual records
#' }
byuser <- function(user = NA,
  url = 'http://www.citeulike.org/json/user?q=')
{
  url2 <- paste(url, user, sep='')
  message(url2)
  out <- fromJSON(url2)
  list(numrecords = length(out), 
       records = out)
}