#' Search CiteUlike.
#' @import stringr XML plyr
#' @param doi DOI of the article.
#' @return Number of citations to the DOI.
#' @export
#' @examples \dontrun{
#' culsearch(query = )
#' }
culsearch <-
  
function(query, author = NA,  
         url = 'http://www.citeulike.org/json/search/all?q=')
{
  url2 <- 
    paste(url, doi, sep='')
  fromJSON(url2)
  
}

length(fromJSON('http://www.citeulike.org/json/search/all?q=ecology'))