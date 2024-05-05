\name{check_connection}
\alias{check_connection}
\title{Check AACT Database Connection}
\description{
  Checks if the connection to the AACT database is active and can fetch data.
}
\usage{
check_connection(conn)
}
\arguments{
  \item{conn}{The connection object returned by \code{\link{aact_connect}}.}
}
\details{
  This function queries the database to retrieve a small sample of data to verify the connection is functioning correctly.
}
\value{
  Returns a data frame with a sample of the study types to confirm the active connection.
}
\examples{
\dontrun{
  conn <- aact_connect("your_username", "your_password")
  check_connection(conn)
}
}
