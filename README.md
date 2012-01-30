# citeulike #

Install is install_github within Hadley's [devtools](https://github.com/hadley/devtools) package.

```R
install.packages("devtools")
require(devtools)
install_github("citeulike", "ropensci")
require(citeulike)
```

This package will return the number of libraries and user/group names in CiteULike for a given DOI. 

I don't know of any CiteULike API documentation, but if you do email us the location on the web [here](ropensci@gmail.com).
