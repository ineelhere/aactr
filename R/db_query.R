check_connection <- function(con){
  message("Fetching unique values for study_type column from the studies table")
  dbGetQuery(con, "select distinct study_type from studies")
}
