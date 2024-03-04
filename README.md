# Lighthouse Labs | Intro to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## Existing Approaches "Database" (Storage in our Apps)

* Hardcoded in variables! (We saw this in our Express apps like TinyApp)
* We stored information via the filesystem (NodeJS -> `fs` module)

### Pros to our Existing Approaches

* Simhplicity / readability!
    * We maintain 100% control over how the data is structured
* Looks/feels familiar, is stored/handled how we'd like or how the language handles data already
* No extra learning!
* Security -> its not stored in a file tat grabbed (variables)

### Cons to our Existing Approaches

* If we refresh a server relying on variables, the variables are destroyed!
* Re-usability suffers with hard-coding, not very flexible for real apps!
* Testing can be more difficult (how do we access these vars?)
* Can add code bloat (variables) - this strays from our concept of "separation of concerns"
* JavaScript is not hyper-specialized in data management - especially for massive data-sets

## Why switch to DBMS? -> DataBase Management System

Database Management System: Any software that helps us manage a database.

* Higher performance!
* Provides basic structure and rules to make data storage more consistent

## RDBMS (Relational Database Management Systems)

Are DBMSs that follow the relational model.

Here are some examples of RDBMSs:
* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL
* Oracle

## SQL

What is SQL?

Structured Query Language -> it is a language for interacting with relational databases.
* Created in the 70s
* Made to read close to English (uses lots of keywords)
* Used to query for data / records
* Also used for CRUD and other data management

### SQL Syntax:

```SQL
-- A basic SQL Query:
SELECT * FROM users;

-- You can use lowercase or mixed casing for keywords...
-- But you probably shouldn't. Most teams/developers use caps to emphasize where the keywords are.
```
