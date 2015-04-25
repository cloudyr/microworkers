\name{list_campaigns}
\alias{list_campaigns}
\title{list_campaigns}
\description{List or search available campaigns}
\usage{
list_campaigns(type = "basic", key = getOption("microworkers_key"))

search_campaigns(status, folder, created_from, created_to,
                 restarted_from, restarted_to, finished_from, finished_to,
                 type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{status}{An optional character string containing a status. Must be one of: \dQuote{BLOCKED}, \dQuote{PENDING_REVIEW}, \dQuote{PENDING_RESTART}, \dQuote{PAUSED}, \dQuote{PAUSED_ADMIN}, \dQuote{RUNNING}, \dQuote{PAUSED_SYSTEM}, or \dQuote{FINISHED}.}
    \item{folder}{An optional character string containing a folder. Must be one of: \dQuote{DEFAULT} or \dQuote{ARCHIVE}.}
    \item{created_from}{An optional character string specifying a date, of the form: \code{2014-12-02 00:00:00}.}
    \item{created_to}{An optional character string specifying a date, of the form: \code{2014-12-02 00:00:00}.}
    \item{restarted_from}{An optional character string specifying a date, of the form: \code{2014-12-02 00:00:00}.}
    \item{restarted_to}{An optional character string specifying a date, of the form: \code{2014-12-02 00:00:00}.}
    \item{finished_from}{An optional character string specifying a date, of the form: \code{2014-12-02 00:00:00}.}
    \item{finished_to}{An optional character string specifying a date, of the form: \code{2014-12-02 00:00:00}.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{\code{list_campaigns} list campaigns of the specified type and their current status. \code{search_campaigns} does the same, but returns only those campaigns that satisfy the specified search criteria.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
\code{\link{get_campaign}}
\code{\link{get_results}}
}
\examples{
\dontrun{
list_campaigns()
}
\dontrun{
search_campaigns(status = "RUNNING")

search_campaigns(created_from = "2015-01-01 00:00:00", created_to = "2015-02-01 00:00:00")
}
}
%\keyword{}
