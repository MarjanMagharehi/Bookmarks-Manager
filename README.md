User story created:

As a user so that I can see what bookmarks I have, I would like to see a list of bookmarks.
<img src = "sequence_diagram.jpg">

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager

Database setup instructions:
`brew install postgresql`
launched psql
created a new database as there was a 'FATAL' error with my named database. The new database has my username as its name
  `CREATE DATABASE marjanmagharehi;`
Created a new postgresql database for Bookmark Manager called bookmark_manager:
  `CREATE DATABASE bookmark_manager;`
Created a new table within that database:
  `CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60))`
    - this is also documented in the migrations folder, within the database(db) folder.
Used \dt to view the database in terminal to make sure the table had been made

Changed the bookmarks.rb file to connect to the database in my computer - using pg. Here,
we can update the database, while loading the webpage at the same time, and not having to kill the webpage and reload. (here we added http://twitter.com)

I set up another database called bookmark_manager_test - aka the test database (to connect with the test files).

As user, so that I may easily add bookmarks that I want
I would like to have a button to add bookmarks 
