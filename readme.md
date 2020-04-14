# Obie technical take home
## Problem:
- Given a spreadsheet of carriers, states, and types of insurance they provide, create an API that returns relevant carriers for a given state and insurance type

## Running:
`docker-compose up`

That's it.

## Endpoints
`http://localhost:3000/carriers/`

`http://localhost:3000/carriers/insurance-type/{insuranceType}`

`http://localhost:3000/carriers/state/{state}`

`http://localhost:3000/carriers/insurance-type/{insuranceType}/state/{state}`



## Solution details:

1. Get data into database
    - Chose postgres for ease of use and familiarity
    - Wrote python script to get all existing spreadsheet data into db
    - Went with a one table db solution for simplicity
        - The data could be broken up into a more relational form if needed
        - Example: Tables for Personal Liability and Commercial Lines with carrier information to populate those tables. Depending on the other data we could also make carrier it's own table and have the data in Personal Liability/Commericial point to corresponding carrier id's
2. Write simple nodejs API with use of express for routes.
    - Really basic implementation of four endpoints that return basic carrier info that was provided.
    - Could implement middleware for error handling/param validation
    - Could use express router when business logic gets more complicated 


## Other
Python script to populate data initially (not needed to run since sql seed file is included):

`python3 excelDb.py`