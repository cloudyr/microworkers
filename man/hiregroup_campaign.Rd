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
    \item{title}{A character string containing the title of the campaign.}
    \item{work}{A character string containing the details of the campaign task. This is a plain text document that can accommodate newline \code{\\n} characters, but no styling.}
    \item{work_file}{}
    \item{csv}{}
    \item{proof}{A character string describing the proof that each worker must submit after they have completed the assigned task. This is a plain text document that can accommodate newline \code{\\n} characters, but no styling.}
    \item{proof_file}{An integer value indicating whether the worker must upload a file as proof. Must be one of 0 (not required), 1 (optional), or 2 (required).}
    \item{duration}{A positive integer value indicating the length of time required to complete the task, in minutes.}
    \item{positions}{A positive integer (greater than 30) indicating the number of tasks available as part of the campaign.}
    \item{positions_per_worker}{A positive integer value indicating the number of tasks that are available per worker.}
    \item{payment}{A numeric value indicating the amount of payment for successful completion of each task (in USD).}
    \item{hiregroup}{A numeric value indicating the HireGroup ID to restrict the campaign to.}
    \item{category}{A numeric value indicating the category of the campaign, as returned by \code{\link{categories}}.}
    \item{ttr}{A numeric value indicating the number of days to rate completed tasks (between 1 and 30).}
    \item{autorate}{A character string indicating whether to use automatically rate tasks based on a VCODE. Must be one of \dQuote{NO}, \dQuote{V} (verify only), or \dQuote{V+R} (verify and rate).}
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
