# BookVerse - A Postgres based app
A Book journal app built using Postgres where you can keep track of all the books you read. You can add new books, edit old books and delete books so all the CRUD operations are available. You can sort the books by recency , rating or author.
Also, the book cover will be fetched from Open Library website if it is available; else, a blank cover would be returned.

## Installation Instructions 
-Firstly, install __PostgreSql server__ locally on your PC. Download it from **[PostgreSql download link](https://www.postgresql.org/download/)**. 
-Follow instructions from the website to install it and set up your database.
-Set up the default username "postgres" and set a user password. Use this password in the index.js file, not the already available password.
-Run the sql queries from queries.sql in pgadmin in the database named "booknotesapp".
-Run the server using below commands after installing dependencies.
```
npm install
node index.js
```
-Go to localhost:3000 in your browser for live app.
