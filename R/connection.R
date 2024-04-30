library(RPostgreSQL)

aact_connection <- function() {
  # Load environment variables
  readRenviron(".Renviron")

  # Retrieve database connection details from environment variables
  user <- Sys.getenv("user")
  password <- Sys.getenv("password")

  # Initialize PostgreSQL driver
  drv <- dbDriver("PostgreSQL")

  # Connect to the database
  con <- dbConnect(drv,
                   dbname = "aact",
                   host = "aact-db.ctti-clinicaltrials.org",
                   port = 5432,
                   user = user,
                   password = password)

  # Return the database connection object
  return(con)
}
