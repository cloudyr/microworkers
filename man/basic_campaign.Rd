\name{basic_campaign}
\alias{basic_campaign}
\title{Basic Campaign}
\description{Create a basic campaign}
\usage{
basic_campaign(title, work, work_file, proof, proof_file,
               duration, positions, payment, speed,
               zone = "int", countries, category, ttr, autorate,
               key = getOption("microworkers_key"))
}
\arguments{
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Create a basic campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{hiregroup_campaign}}
\code{\link{list_campaigns}}
\code{\link{add_positions}}
\code{\link{set_speed}}
\code{\link{stop_campaign}}
\code{\link{get_campaign}}
\code{\link{get_results}}
}
\examples{
\dontrun{
basic_campaign()
}
}
%\keyword{}
