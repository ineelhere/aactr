info <- function() {
  message("Welcome to aactR \
  👉 aact_connect(username, password) - Connect to the AACT database using your AACT username and Password \
  👉 check_connection(conn) - Check if the db connection is working fine. Conn is the connection created using aact_connect function \
  👉 get_query(conn, query) - write a custom query for fetching data from AACT database. Conn is the connection and query is the SQL query.")
}
