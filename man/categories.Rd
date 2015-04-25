\name{categories}
\alias{categories}
\title{Categories}
\description{Get campaign categories}
\usage{
categories(type = "basic", key = getOption("microworkers_key"))
}
\arguments{
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Get a list of available campaign categories to use in creating a campaign with either \code{\link{basic_campaign}} or \code{\link{hiregroup_campaign}}. Workers can use categories to search for and identify tasks to complete.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{basic_campaign}}
\code{\link{hiregroup_campaign}}
}
\examples{
\dontrun{
categories()
}
}
%\keyword{}
