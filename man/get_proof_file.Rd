\name{get_proof_file}
\alias{get_proof_file}
\title{get_proof_file}
\description{Get an uploaded proof file}
\usage{
get_proof_file(task, key = getOption("microworkers_key"))
}
\arguments{
    \item{task}{A character string specifying a task ID.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Get an uploaded proof file for the specified task.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{list_tasks}}
\code{\link{get_task}}
\code{\link{approve_task}}
\code{\link{reject_task}}
}
\examples{
\dontrun{
list_tasks()

get_task()
get_proof_file()

}
}
%\keyword{}
