# Lighthouse Labs | Introduction to SQL

* [X] Databases
* [X] PostgreSQL
* [ ] Basic SQL Queries (Focus on `SELECT`)

## Databases are the Missing Puzzle Piece

The last piece of the full-stack is the database. This offers us a persistant storage system.

* PostgreSQL
* MySQL
* Oracle
* MongoDB
* MariaDB
* Microsoft SQL Server

### Relational Databases

* Database ---> Table(s) / Attributes ---> Records

Database: website

### programming_languages

| **id**    | **name**    | **year** | **description**
|-----------|-------------|----------|----------------
| 1         | HTML        | 1993     | Markup language for website content.
| 2         | CSS         | 1996     | Stylesheet language for visual aspect of web page content.
| 3         | JavaScript  | 1995     | Web page scripting language.
| 4         | Ruby        | 1995     | General purpose and programmer-friendly scripting language.
| 5         | SQL         | 1974     | Language for interacting with database systems.

## Schema

---> Table exists inside of the `website` database.
---> Table is called `programming_languages`
* INT    | `id`
* STRING | `name`
* INT    | `year`
* STRING | `description`

| 6       | Julia        | 2012      | High-performance scripting language.

### programming_languages

| **id**    | **name**    | **year** | **description**
|-----------|-------------|----------|----------------
| 1         | HTML        | 1993     | Markup language for website content.
| 2         | CSS         | 1996     | Stylesheet language for visual aspect of web page content.
| 3         | JavaScript  | 1995     | Web page scripting language.
| 4         | Ruby        | 1995     | General purpose and programmer-friendly scripting language.
| 5         | SQL         | 1974     | Language for interacting with database systems.
| 6         | Julia       | 2012     | High-performance scripting language.
| 7         | PHP         | 1994     | Web scripting language.

## PostgreSQL

### SQL - Structured Query Language

Human readable.

`postgres://`

`Primary Key` -> field / attribute / column -> Easy for PCs to sort / order.
