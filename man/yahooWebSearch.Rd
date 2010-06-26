\name{yahooWebSearch}
\alias{yahooWebSearch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
yahooWebSearch
}
\description{
Web Search with Yahoo! Japan (http://developer.yahoo.co.jp/webapi/search/websearch/v1/websearch.html)
}
\usage{
yahooWebSearch(appid, query, type = "all", results = "10", start = 1, format = "any", adult_ok = "", similar_ok = "", language = "ja", country = "", site = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{appid}{
%%     ~~Describe \code{appid} here~~
}
  \item{query}{
%%     ~~Describe \code{query} here~~
}
  \item{type}{
%%     ~~Describe \code{type} here~~
}
  \item{results}{
%%     ~~Describe \code{results} here~~
}
  \item{start}{
%%     ~~Describe \code{start} here~~
}
  \item{format}{
%%     ~~Describe \code{format} here~~
}
  \item{adult_ok}{
%%     ~~Describe \code{adult_ok} here~~
}
  \item{similar_ok}{
%%     ~~Describe \code{similar_ok} here~~
}
  \item{language}{
%%     ~~Describe \code{language} here~~
}
  \item{country}{
%%     ~~Describe \code{country} here~~
}
  \item{site}{
%%     ~~Describe \code{site} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(appid, query, type="all", results="10", start=1, format="any", adult_ok="", similar_ok = "", language="ja", country="", site=""){
  search.url <- "http://search.yahooapis.jp/WebSearchService/V1/webSearch?output=json"
  request.url <- paste(search.url, "&appid=", appid, "&query=", URLencode(query),
                       "&type=", type, "&results=", results, "&start=", start,
                       "&format=", format, "&adult_ok", adult_ok, "&similar_ok=", similar_ok,
                       "&language=", language, "&country=", country, "&site=", site, sep="")
  
  response <- try(suppressWarnings(fromJSON(getURL(request.url))), silent=T)
  response$ResultSet
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
