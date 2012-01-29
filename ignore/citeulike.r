#' Get CiteUlike number of citations.
#' @import stringr XML plyr
#' @param doi DOI of the article.
#' @return Number of citations to the DOI.
#' @export
#' @examples \dontrun{
#' url <- 'http://www.citeulike.org/api/posts/for/doi/10.1371/journal.pmed.0020124'
#' citeulike(doi = '10.1371/journal.pmed.0020124')
#' }
numcites <-
  
function(doi, 
         url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url <- paste(url, doi, sep='')
  length(xpathApply(xmlParse(getURL(url)), "//post"))
}
# 'http://www.citeulike.org/api/posts/for/doi/10.1371/journal.pmed.0020124'

out <- citeulike(doi = '10.1371/journal.pmed.0020124')
xpathApply(posts[[1]], "//post")

xmlToList(posts[[1]])
xmlAttrs(posts[[1]])

require(RCurl); require(XML); require(plyr)