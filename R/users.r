#' Get CiteUlike usernames or groups that cite the DOI.
#' @import XML RCurl plyr
#' @param doi DOI of the article.
#' @return Character vector of usernames or group names.
#' @export
#' @examples \dontrun{
#' users(doi = '10.1371/journal.pmed.0020124')
#' }
users <-
  
function(doi, 
         url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url <- paste(url, doi, sep='')
  out <- xpathApply(xmlParse(getURL(url)), "//post")
  list_ <- lapply(out, xmlAttrs)
  laply(list_, function(x) x[[1]])
}