#' Get CiteUlike number of posts for a given DOI.
#' @import XML RCurl
#' @param doi DOI of the article.
#' @return Number of posts citing the DOI.
#' @export
#' @examples \dontrun{
#' posts(doi = '10.1371/journal.pmed.0020124')
#' }
posts <-
  
function(doi, 
         url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url <- paste(url, doi, sep='')
  length(xpathApply(xmlParse(getURL(url)), "//post"))
}