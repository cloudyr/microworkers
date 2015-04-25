\name{stop_campaign}
\alias{stop_campaign}
\alias{pause_campaign}
\alias{resume_campaign}
\title{stop_campaign}
\description{Stop, pause, or resume a campaign}
\usage{
stop_campaign(campaign, type = "basic", key = getOption("microworkers_key"))

pause_campaign(campaign, type = "basic", key = getOption("microworkers_key"))

resume_campaign(campaign, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Stop, pause, or resume a campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
\code{\link{add_positions}}
\code{\link{set_speed}}
}
\examples{
\dontrun{
basic_campaign()
pause_campaign()
resume_campaign()
stop_campaign()
}
}
%\keyword{}
