#' Get CiteUlike number of posts for a given DOI.
#' @import XML RCurl
#' @param doi DOI of the article.
#' @param url Base URL for the API call. Don't change. 
#' @return Number of posts citing the DOI.
#' @export
#' @examples \dontrun{
#' posts(doi = '10.1371/journal.pmed.0020124')
#' }
posts <- function(doi = NA, 
  url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url2 <- paste(url, doi, sep='')
  message(url2)
  length(xpathApply(xmlParse(getURL(url2)), "//post"))
}