# Lighthouse Labs | Introduction to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## Existing Approach...

`const myDatabase = {...};`

`fs` --> More persistant! But still too slow...

### Pros?

* Data at your fingertips!
* Easy to change / see!
* Quick and "dirty" manual testing...

### Cons?

* Insecure... hard to include in repo (securely)
* Big data is rather cumbersome
* No central way to access the data
* Async could be a concern???
* Big performance hit (for large data sets)

## Why switch to a DBMS (Database Management System?)

* Higher performance...
* DBMSs are specialized software for efficient, consistent, and structured data handling/manipulation...

## RDBMS (Relational Database Management System)

A DBMS that follow the relational model.

* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL
* Oracle



Let's ensure our RECORD / ROW has COLUMNS or ATTRIBUTES!



`programming_languages`

| **id**    | **name**    | **year** | **description**
|-----------|-------------|----------|----------------
| 1         | HTML        | 1993     | Markup language for website content.
| 2         | CSS         | 1996     | Stylesheet language for visual aspect of web page content.
| 3         | JavaScript  | 1995     | Web page scripting language.
| 4         | Ruby        | 1995     | General purpose and programmer-friendly scripting
| 5         | SQL         | 1974     | Language for interacting with RDBMSs.

Big terms!

* Database / Collection (List of Tables)
* Table / Relation (List of Records)
    * Columns / Attributes

Common columns / attributes!

* Primary Key (Indexed Value)
* Foreign Key (Represents a Record in another Table)

## Data-Types (Assigned to Columns / Attributes)

| **id**    | **name**    | **year** | **description**

```
programming_languages fields:
    id:          INTEGER
    name:        TEXT
    year:        INTEGER
    description: TEXT
```
