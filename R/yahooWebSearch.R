yahooWebSearch <-
function(appid, query, type="all", results="10", start=1, format="any", adult_ok="", similar_ok = "", language="ja", country="", site=""){
  search.url <- "http://search.yahooapis.jp/WebSearchService/V1/webSearch?output=json"
  request.url <- paste(search.url, "&appid=", appid, "&query=", URLencode(query),
                       "&type=", type, "&results=", results, "&start=", start,
                       "&format=", format, "&adult_ok", adult_ok, "&similar_ok=", similar_ok,
                       "&language=", language, "&country=", country, "&site=", site, sep="")
  
  response <- try(suppressWarnings(fromJSON(getURL(request.url))), silent=T)
  response$ResultSet
}

