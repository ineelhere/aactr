# aactR
R package to connect and interact with clinical trials data via the AACT

### Installation
Install the package from GitHub using `devtools` package

```R
library(devtools)
install_github("ineelhere/aactr")
```
If you don't have the `devtools` package already please install it with `install.packages("devtools")`

Check if the package got installed by importing it
```R
library(aactr)
```

### AACT Setup
* Sign up at https://aact.ctti-clinicaltrials.org/users/sign_up
* You will need the `Username` and `Password` you created.

### Using the package features
👉 To connect to the AACT database, use the `connect_aact()` function:
```R
library(aactr)
conn <- aact_connect(username, password) 
```
`username` and `password` should be the same as your AACT account.

👉 To quickly check if your AACT db connection is actually fetching data: 
```R
library(aactr)
check_connection(conn)
```
Note, we just used the `conn` connection created earlier.

You should expect an output similar to -
```
                        study_type
1 Observational [Patient Registry]
2                   Interventional
3                  Expanded Access
4                             <NA>
5                    Observational
```

👉 To refer to AACT database schema and details
```R
library(aactr)
get_schema()
```
👉 To run custom queries for fetching data from the AACT database
```R
library(aactr)
get_query(conn, 
          query = "SELECT * FROM studies LIMIT 5")
```
You may define the query string outside the function call, store it in a variable and just pass it to the `get_query()` function.

Expected output:
```
       nct_id                         source enrollment     overall_status
1 NCT05762861            University of Minho        200 Not yet recruiting
2 NCT02950012                  BIO-CAT, Inc.        100          Completed
3 NCT05251298   University Hospital Muenster        370         Recruiting
4 NCT01376921 Merck KGaA, Darmstadt, Germany        300          Completed
5 NCT05237219             University of Pecs          0          Withdrawn
```

👉 A quick info reference
```R
library(aactr)
info()
```




💡 Got questions and/or suggestions? Please create an issue/PR on the GitHub repository: https://github.com/ineelhere/aactr

P.S. More features on the way!
___

**© `Indraneel Chakraborty` | 2024** 🧑‍💻[LinkedIn](https://www.linkedin.com/in/indraneelchakraborty/) | [X/Twitter](https://twitter.com/ineelhere)