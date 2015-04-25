\name{block_worker}
\alias{block_worker}
\title{block_worker}
\description{Block a worker from working on a campaign}
\usage{
block_worker(campaign, worker, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{worker}{A character string containing a worker ID.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Block a worker from working on a campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
\code{\link{approve_task}}
\code{\link{reject_task}}
}
\examples{
\dontrun{
block_worker()
}
}
%\keyword{}
