\name{add_positions}
\alias{add_positions}
\title{add_positions}
\description{Add positions to a campaign}
\usage{
add_positions(campaign, positions, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{positions}{An integer value specifying the number of positions to add to the campaign.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Add positions to an existing campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
\code{\link{stop_campaign}}
\code{\link{resume_campaign}}
\code{\link{pause_campaign}}
\code{\link{set_speed}}
}
\examples{
\dontrun{
basic_campaign()
add_positions()
}
}
%\keyword{}
