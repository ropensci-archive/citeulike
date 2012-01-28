#' Get CiteUlike number of citations.
#' @import XML RCurl
#' @param doi DOI of the article.
#' @return Number of citations to the DOI.
#' @export
#' @examples \dontrun{
#' numcites(doi = '10.1371/journal.pmed.0020124')
#' }
numcites <-
  
function(doi, 
         url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url <- paste(url, doi, sep='')
  length(xpathApply(xmlParse(getURL(url)), "//post"))
}