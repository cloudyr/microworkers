\name{get_results}
\alias{get_results}
\title{get_results}
\description{Get results for a campaign}
\usage{
get_results(campaign, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Get results for a campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
\code{\link{stop_campaign}}
\code{\link{list_campaigns}}
\code{\link{get_campaign}}
\code{\link{get_campaign_status}}
}
\examples{
\dontrun{
basic_campaign()
list_campaigns()
get_campaign()
get_results()
}
}
%\keyword{}
