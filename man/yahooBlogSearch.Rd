\name{yahooBlogSearch}
\alias{yahooBlogSearch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
yahooBlogSearch
}
\description{
Blog Search with Yahoo! Japan (http://developer.yahoo.co.jp/webapi/search/blogsearch/v1/blogsearch.html)
}
\usage{
yahooBlogSearch(appid, query, type = "article", results = "10", start = 1, term = "")
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
  \item{term}{
%%     ~~Describe \code{term} here~~
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
function(appid, query, type="article", results="10", start=1, term=""){
  search.url <- "http://search.yahooapis.jp/BlogSearchService/V1/blogSearch?output=json"
  request.url <- paste(search.url, "&appid=", appid, "&query=", URLencode(query),
                       "&type=", type, "&results=", results, "&start=", start,
                       "&term=", term, sep="")
  
  response <- try(suppressWarnings(fromJSON(getURL(request.url))), silent=T)
  response
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
