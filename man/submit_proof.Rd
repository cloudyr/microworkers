\name{submit_proof}
\alias{submit_proof}
\title{submit_proof}
\description{Submit proof for a task}
\usage{
submit_proof(campaign, worker, ip, proof, type = "basic", 
             key = getOption("microworkers_key"))
}
\arguments{
    \item{campaign}{A character string containing a campaign ID.}
    \item{worker}{A character string containing the worker ID for the submitting worker.}
    \item{ip}{A character string containing the IP address for the submitting worker.}
    \item{proof}{A character string containing the \dQuote{proof} for a campaign task.}
    \item{type}{A character string specifying the type of campaign. One of \dQuote{basic} (the default) or \dQuote{hiregroup}.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Submit the \dQuote{proof} (i.e., completion code) for a task associated with a campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
%\seealso{}
\examples{
\dontrun{
submit_proof()
}
}
%\keyword{}
