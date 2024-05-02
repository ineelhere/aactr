info <- function() {
  message(
    "Welcome to aactR:\n",
    "👉 aact_connect(username, password) - Connect to the AACT database using your AACT username and password\n",
    "👉 check_connection(conn) - Check if the db connection is working fine. Conn is the connection created using the aact_connect function\n",
    "👉 get_query(conn, query) - Write a custom query for fetching data from the AACT database. Conn is the connection and query is the SQL query."
  )
}

get_schema <- function() {
  message(
    "Resources for AACT database schema:\n",
    "👉 Schema Image: https://aact.ctti-clinicaltrials.org/documentation/aact_schema.png\n",
    "👉 Excel version of Data Dictionary: https://aact.ctti-clinicaltrials.org/definitions.csv\n",
    "👉 Excel version of Table Definitions: https://aact.ctti-clinicaltrials.org/documentation/aact_tables.xlsx\n",
    "👉 Online Searchable version of Data Dictionary: https://aact.ctti-clinicaltrials.org/data_dictionary"
  )
}
