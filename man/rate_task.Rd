\name{rate_task}
\alias{approve_task}
\alias{reject_task}
\title{approve/reject}
\description{Approve or reject a submitted task}
\usage{
approve_task(campaign, task, comment, type = "basic", key = getOption("microworkers_key"))

reject_task(campaign, task, comment, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{task}{A character string containing the task ID for the task.}
    \item{comment}{A character string containing feedback to be supplied to the worker. This is required for \code{reject_task} and optional for \code{approve_task}.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Approve or reject a task submitted by a worker for a campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{list_tasks}}
\code{\link{get_task}}
}
\examples{
\dontrun{
tasks <- list_tasks()

approve_task()

reject_task()
}
}
%\keyword{}
