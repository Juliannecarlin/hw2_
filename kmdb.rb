# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# # TODO!

movies1 = Movie.new
movies1.title = "Bateman Begins"
movies1.year_released = "2005"
movies1.rated = "PG-13"
movies1.person_id = Person.where({name: "Christopher Nolan"})[0]
movies1.save

movies2 = Movie.new
movies2.title = "The Dark Knight"
movies2.year_released = "2008"
movies2.rated = "PG-13"
movies2.person_id = Person.where({name: "Christopher Nolan"})[0]
movies2.save

movies3 = Movie.new
movies3.title = "The Dark Knight Rises"
movies3.year_released = "2012"
movies3.rated = "PG-13"
movies3.person_id = Person.where({name: "Christopher Nolan"})[0]
movies3.save

people1 = Person.new
people1.name = "Christopher Nolan"
people1.save

people2 = Person.new
people2.name = "Christian Bale"
people2.save

people3 = Person.new
people3.name = "Michael Caine"
people3.save

people4 = Person.new
people4.name = "Liam Neeson"
people4.save

people5 = Person.new
people5.name = "Katie Holmes"
people5.save

people6 = Person.new
people6.name = "Gary Oldman"
people6.save

people7 = Person.new
people7.name = "Heath Ledger"
people7.save

people8 = Person.new
people8.name = "Aaron Eckhart"
people8.save

people9 = Person.new
people9.name = "Maggie Gyllenhaal"
people9.save

people10 = Person.new
people10.name = "Tom Hardy"
people10.save

people11 = Person.new
people11.name = "Joseph Gordon-Levitt"
people11.save

people12 = Person.new
people12.name = "Anne Hathaway"
people12.save

role1 = Role.new
role1.movie_id = Movie.where({title: "Batman Begins"})
role1.person_id = Person.where({name: "Christian Bale"})[0]
role1.character_name = "Bruce Wayne"
role1.save

role2 = Role.new
role2.movie_id = Movie.where({title: "Batman Begins"})
role2.person_id = Person.where({name: "Michael Caine"})[0]
role2.character_name = "Alfred"
role2.save

role3 = Role.new
role3.movie_id = Movie.where({title: "Batman Begins"})
role3.person_id = Person.where({name: "Liam Neeson"})[0]
role3.character_name = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4.movie_id = Movie.where({title: "Batman Begins"})
role4.person_id = Person.where({name: "Katie Holmes"})[0]
role4.character_name = "Rachel Dawes"
role4.save

role5 = Role.new
role5.movie_id = Movie.where({title: "Batman Begins"})
role5.person_id = Person.where({name: "Gary Oldman"})[0]
role5.character_name = "Commissioner Gordon"
role5.save

role6 = Role.new
role6.movie_id = Movie.where({title: "The Dark Knight"})
role6.person_id = Person.where({name: "Christian Bale"})[0]
role6.character_name = "Bruce Wayne"
role6.save

role7 = Role.new
role7.movie_id = Movie.where({title: "The Dark Knight"})
role7.person_id = Person.where({name: "Heath Ledger"})[0]
role7.character_name = "Joker"
role7.save

role8 = Role.new
role8.movie_id = Movie.where({title: "The Dark Knight"})
role8.person_id = Person.where({name: "Aaron Eckhart"})[0]
role8.character_name = "Harvey Dent"
role8.save

role9 = Role.new
role9.movie_id = Movie.where({title: "The Dark Knight"})
role9.person_id = Person.where({name: "Michael Caine"})[0]
role9.character_name = "Alfred"
role9.save

role10 = Role.new
role10.movie_id = Movie.where({title: "The Dark Knight"})
role10.person_id = Person.where({name: "Maggie Gyllenhaal"})[0]
role10.character_name = "Rachel Dawes"
role10.save

role11 = Role.new
role11.movie_id = Movie.where({title: "The Dark Knight Rises"})
role11.person_id = Person.where({name: "Cristian Bale"})[0]
role11.character_name = "Bruce Wayne"
role11.save

role12 = Role.new
role12.movie_id = Movie.where({title: "The Dark Knight Rises"})
role12.person_id = Person.where({name: "Gary Oldman"})[0]
role12.character_name = "Commissioner Gordon"
role12.save

role13 = Role.new
role13.movie_id = Movie.where({title: "The Dark Knight Rises"})
role13.person_id = Person.where({name: "Tom Hardy"})[0]
role13.character_name = "Bane"
role13.save

role14 = Role.new
role14.movie_id = Movie.where({title: "The Dark Knight Rises"})
role14.person_id = Person.where({name: "Joseph Gordon-Levitt"})[0]
role14.character_name = "John Blake"
role14.save

role15 = Role.new
role15.movie_id = Movie.where({title: "The Dark Knight Rises"})
role15.person_id = Person.where({name: "Anne Hathaway"})[0]
role15.character_name = "Selina Kyle"
role15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
