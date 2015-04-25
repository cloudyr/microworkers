\name{get_task}
\alias{get_task}
\title{get_task}
\description{Get a task by its task ID}
\usage{
get_task(task, key = getOption("microworkers_key"))
}
\arguments{
    \item{task}{A character string specifying a task ID.}
    \item{key}{A character string containing a Microworkers.com API secret key.}
}
\details{Get information about a task by its task ID.}
%\value{}
%\references{}
\author{Thomas J. Leeper}
%\note{}
\seealso{
\code{\link{list_tasks}}
\code{\link{get_proof_file}}
\code{\link{approve_task}}
\code{\link{reject_task}}
}
\examples{
\dontrun{
list_tasks()
get_task()
approve_task()
}
}
%\keyword{}
