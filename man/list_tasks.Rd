\name{list_tasks}
\alias{list_tasks}
\alias{list_worker_tasks}
\title{list_tasks}
\description{List tasks for a campaign (or worker in a campaign)}
\usage{
list_tasks(campaign, type = "basic", key = getOption("microworkers_key"))

list_worker_tasks(campaign, worker, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{worker}{A character string containing a worker ID.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{List tasks associated with a campaign, or for a given worker within a campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{get_task}}
\code{\link{approve_task}}
\code{\link{reject_task}}
}
\examples{
\dontrun{
list_tasks()

list_worker_tasks()
}
}
%\keyword{}
