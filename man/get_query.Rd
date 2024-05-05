\name{get_query}
\alias{get_query}
\title{Execute Custom Queries on the AACT Database}
\description{
  Runs a custom SQL query on the AACT database and returns the results.
}
\usage{
get_query(conn, query)
}
\arguments{
  \item{conn}{Database connection object.}
  \item{query}{A string containing the SQL query to be executed.}
}
\details{
  Allows users to perform custom SQL queries to fetch specific data from the AACT database. Ensure SQL syntax is correct to avoid errors.
}
\value{
  Returns a data frame with the results of the SQL query.
}
\examples{
\dontrun{
  conn <- aact_connect("your_username", "your_password")
  query <- "SELECT nct_id, source, enrollment, overall_status FROM studies LIMIT 5;"
  results <- get_query(conn, query)
  print(results)
}
}
