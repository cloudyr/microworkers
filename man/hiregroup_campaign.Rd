\name{hiregroup_campaign}
\alias{hiregroup_campaign}
\title{HireGroup Campaign}
\description{Create a HireGroup campaign}
\usage{
hiregroup_campaign(title, work, work_file, csv, proof, proof_file, 
                   duration, positions, positions_per_worker,
                   payment, hiregroup, category, ttr, autorate,
                   key = getOption("microworkers_key"))
}
\arguments{
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Create a HireGroup campaign that is only available to workers in the specified group.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{list_campaigns}}
\code{\link{add_positions}}
\code{\link{stop_campaign}}
\code{\link{get_campaign}}
\code{\link{get_results}}
}
\examples{
\dontrun{
hiregroup_campaign()
}
}
%\keyword{}
