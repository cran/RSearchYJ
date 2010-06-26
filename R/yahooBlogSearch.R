yahooBlogSearch <-
function(appid, query, type="article", results="10", start=1, term=""){
  search.url <- "http://search.yahooapis.jp/BlogSearchService/V1/blogSearch?output=json"
  request.url <- paste(search.url, "&appid=", appid, "&query=", URLencode(query),
                       "&type=", type, "&results=", results, "&start=", start,
                       "&term=", term, sep="")
  
  response <- try(suppressWarnings(fromJSON(getURL(request.url))), silent=T)
  response
}

