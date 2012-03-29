#' Get CiteUlike usernames or groups that cite a given DOI.
#' @import XML RCurl plyr
#' @param doi DOI of the article.
#' @param url Base URL for the API call. Don't change.
#' @return Character vector of usernames or group names.
#' @export
#' @examples \dontrun{
#' users(doi = '10.1371/journal.pmed.0020124')
#' }
users <- function(doi = NA, 
  url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url2 <- paste(url, doi, sep='')
  message(url2)
  out <- xpathApply(xmlParse(getURL(url2)), "//post")
  list_ <- lapply(out, xmlAttrs)
  laply(list_, function(x) x[[1]])
}