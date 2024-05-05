\name{aact_connect}
\alias{aact_connect}
\title{Connect to the AACT Database}
\description{
  Connects to the AACT database using provided credentials.
}
\usage{
aact_connect(username, password)
}
\arguments{
  \item{username}{Username for AACT database access.}
  \item{password}{Password for AACT database access.}
}
\details{
  The function requires valid AACT credentials (username and password) to establish a connection. Ensure the credentials are active and correct to successfully connect to the database.
}
\value{
  Returns a connection object that can be used to interact with the AACT database.
}
\examples{
\dontrun{
  conn <- aact_connect("your_username", "your_password")
}
}
