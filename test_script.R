
library(jsonlite)



srsearch <- 1999


 FullSearchString <- paste("http://de.wikipedia.org/w/api.php?action=query&list=search&srsearch=",srsearch,"&format=json",sep="")
  Response <- fromJSON(FullSearchString)
  y <- Response$query$search["snippet"]
  y<- y[-c(1),1] 
  x <- as.character(y)

  ab <- HTML(x)
  