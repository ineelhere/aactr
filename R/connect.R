aact_connection <- function(user, password) {
  # Connect to AACT PostgreSQL database
  con <- dbConnect(
    drv = dbDriver("PostgreSQL"),
    dbname = "aact",
    host = "aact-db.ctti-clinicaltrials.org",
    port = 5432,
    user = user,
    password = password
  )
  return(con)
}

check_connection <- function(con) {
  # Run a simple query to check db connection
  df <- dbGetQuery(con, "select distinct study_type from studies")
  return(df)
}
