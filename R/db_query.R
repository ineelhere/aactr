get_query <- function(con, query) {
  # Run a simple query to check db connection
  df <- dbGetQuery(con, query)
  return(df)
}
