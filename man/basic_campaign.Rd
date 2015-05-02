\name{basic_campaign}
\alias{basic_campaign}
\title{Basic Campaign}
\description{Create a basic campaign}
\usage{
basic_campaign(title, work, work_file, proof, proof_file,
               duration, positions, payment, autorate, speed, 
               zone = "int", countries, category, ttr, 
               key = getOption("microworkers_key"))
}
\arguments{
    \item{title}{A character string containing the title of the campaign.}
    \item{work}{A character string containing the details of the campaign task. This is a plain text document that can accommodate newline \code{\\n} characters, but no styling. If \code{autorate} is set to \dQuote{V} or \dQuote{V+R}, see Note about how to include an appropriate URL template for workers to retrieve their VCODE.}
    \item{work_file}{}
    \item{proof}{A character string describing the proof that each worker must submit after they have completed the assigned task. This is a plain text document that can accommodate newline \code{\\n} characters, but no styling.}
    \item{proof_file}{An integer value indicating whether the worker must upload a file as proof. Must be one of 0 (not required), 1 (optional), or 2 (required).}
    \item{duration}{A positive integer value indicating the length of time required to complete the task, in minutes.}
    \item{positions}{A positive integer (greater than 30) indicating the number of tasks available as part of the campaign.}
    \item{payment}{A numeric value indicating the amount of payment for successful completion of each task (in USD).}
    \item{autorate}{A character string indicating whether to use automatically rate tasks based on a VCODE. Must be one of \dQuote{NO}, \dQuote{V} (verify only), or \dQuote{V+R} (verify and rate \dQuote{Satisfied}). See Notes.}
    \item{speed}{An integer value between 1 and 1000 indicating the speed with which the campaign should be completed. 1000 is fastest.}
    \item{zone}{A character string indicating the region of the world to target, as returned by \code{\link{zones}}. The default is \dQuote{int} (international).}
    \item{countries}{If \code{zone = "int"}, a character vector indicating the countries within the region that should be targeted.}
    \item{category}{A numeric value indicating the category of the campaign, as returned by \code{\link{categories}}.}
    \item{ttr}{A numeric value indicating the number of days to rate completed tasks (between 1 and 30).}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Create a basic campaign.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
\note{
A VCODE is a unique code that you generate to supply to workers as a completion code. Using VCODE verification allows you as a requester to automatically verify work completed by workers without the need to manually approve or reject tasks. If verification is used, a worker will not be able to submit proof in any form other than a VCODE. If an incorrect VCODE is submitted, the task is ignored. 

To use VCODE, you must point workers to an external website that can generate a VCODE (note that the VCODE formulae differ for Basic and HireGroup campaigns). In your campaign's \code{work} field, you can specify a URL for workers to visit to receive a VCODE: \code{http://www.yourwebsite.com/start.php?campaign={{CAMP_ID}}&worker={{MW_ID}}}. When rendered by Microworkers, the \code{{{CAMP_ID}}} and \code{{{MW_ID}}} tags will be replaced with the campaign ID and the appropriate worker ID. The VCODE is then simply calculated as the SHA256 hash of the concatenated (without spaces) campaign ID, worker ID, and your requester VCODE Secret Key (which differs from your API key and can be retrieved from \url{https://microworkers.com/account.php}), prepended with \dQuote{mw-}. Because only you have access to your VCODE Secret Key, the worker cannot generate a correct VCODE on their own. Your site can display the VCODE to the worker and they submit it as proof of work completed.

See \url{http://www.blog.microworkers.com/vcode-verification/} and \url{https://microworkers.com/vcode.php} for details.
}
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
