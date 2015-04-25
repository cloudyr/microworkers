\name{set_speed}
\alias{set_speed}
\title{set_speed}
\description{Set the speed of a basic campaign}
\usage{
set_speed(campaign, speed, type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{speed}{An integer value between 1 (slowest) and 1000 (fastest).}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Set the speed of a basic campaign after it has been created.}
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
\code{\link{add_positions}}
}
\examples{
\dontrun{
basic_campaign()
set_speed()
}
}
%\keyword{}
