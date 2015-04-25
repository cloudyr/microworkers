\name{zones}
\alias{zones}
\title{Zones}
\description{Get available zones}
\usage{
zones(type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Get a list of available geographical zones (and countries for each zone) to use in creating a campaign with either \code{\link{basic_campaign}} or \code{\link{hiregroup_campaign}}.}
\value{A data.frame containing the \code{id}, \code{name}, and \code{countries} for each available zone.}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
}
\examples{
\dontrun{
zones()
}
}
%\keyword{}
