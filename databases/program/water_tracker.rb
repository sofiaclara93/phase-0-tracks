# Create a program that tracks how much water you drink in a day


# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("water.db")

#create tables
create_H2O_amt_table = <<-SQL
  CREATE TABLE IF NOT EXISTS H2O_amt(
    id INTEGER PRIMARY KEY,
    day VARCHAR(255),
    date VARCHAR(255),
    amount INT
  )
SQL

# creates table (if it's not there already)
db.execute(create_H2O_amt_table)

