#' Get CiteUlike tags for a DOI. 
#' @import XML RCurl plyr wordcloud
#' @param doi DOI of the article.
#' @param summary Print summary data.frame of tags and counts.
#' @param wc Make wordcloud or not (Defaults to FALSE). Uses the wordcloud package.
#' @param url Base URL for the API call. Don't change.
#' @return Tags on the DOI.
#' @export
#' @examples \dontrun{
#' tags(doi = '10.1371/journal.pmed.0020124')
#' tags(doi = '10.1371/journal.pmed.0020124', summary=TRUE)
#' tags(doi = '10.1371/journal.pmed.0020124', wc=TRUE)
#' }
tags <- function(doi = NA, summary = FALSE, wc = FALSE,
  url = 'http://www.citeulike.org/api/posts/for/doi/')
{
  url2 <- paste(url, doi, sep='')
  message(url2)
  tags <- xpathApply(xmlParse(getURL(url2)), "//tag")
  out <- sapply(tags, xmlValue)
  if(summary == FALSE){out} else
    {
      outdf <- data.frame(out)
      outsum <- ddply(outdf, .(out), summarise, length(out))
    }
  if(wc == FALSE){outsum} else
    {
      outdf <- data.frame(out)
      outsum <- ddply(outdf, .(out), summarise, length(out))
      wordcloud(outsum[,1], outsum[,2])
    }
}