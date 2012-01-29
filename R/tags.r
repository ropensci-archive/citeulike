#' Get CiteUlike tags for a DOI. 
#' @import XML RCurl plyr wordcloud
#' @param doi DOI of the article.
#' @return Tags on the DOI.
#' @export
#' @examples \dontrun{
#' tags(doi = '10.1371/journal.pmed.0020124')
#' tags(doi = '10.1371/journal.pmed.0020124', summary=TRUE)
#' tags(doi = '10.1371/journal.pmed.0020124', TRUE, TRUE)
#' tags(doi = '10.1371/journal.pmed.0020124', wordcloud=TRUE)
#' }
tags <-
  
function(doi, summary = FALSE, wordcloud = FALSE,
         url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  if(wordcloud==TRUE){summary <- TRUE} else{summary <- FALSE} 
  url <- paste(url, doi, sep='')
  tags <- xpathApply(xmlParse(getURL(url)), "//tag")
  out <- sapply(tags, xmlValue)
  if(summary == FALSE){out} else
    {
      outdf <- data.frame(out)
      outsum <- ddply(outdf, .(out), summarise, length(out))
        if(wordcloud == FALSE){outsum} else
          {
            wordcloud(outsum[,1], outsum[,2])
          }
    }
}