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


# add water data
def enter_water_amt(db, day, date, amount)
  db.execute("INSERT INTO H2O_amt (day, date, amount) VALUES (?, ?, ?)", [day, date, amount])
end 


# display summary of week
# def week_summary(day1, day2, amount)
# week_amt = db.execute ( <<-SQL
#   SELECT * FROM H2O_amt
#   WHERE 
# end 

# display summary of day 
def day_summary(day_of_week)
  day_amt = db.execute ("SELECT * FROM H2O_amt WHERE day= day_of_week")
end 

# #delete amount of water 
# def delete_entry
# end 

# #update entry (like if user entered wrong amount)
# def update_amt
# end 


def add_water 
  puts "Please enter the day of the week:"
  day = gets.chomp

  puts "Please enter the date: (mm/dd/yy)"
  date = gets.chomp

  puts "Please enter the amount of water you drank in oz."
  amount = gets.chomp
end 

puts "WELCOME TO YOUR WATER INTAKE TRACKER!!"

answer = "not quit"
until answer == "quit"
  puts "What would you like to do?"
  puts "Would you like to add water to your log? (ENTER: add)"
  puts "Would you like to view your daily log? (ENTER: daily summary)"
  puts "Would you like to see your weekly summary? (ENTER: weekly summary)"
  puts "would you like to update and entry? (ENTER: update)"
  answer = gets.chomp
  answer.downcase!

  if answer == "add"
    add_water

  elsif answer == "daily summary"

  elsif answer == "weekly summary"

  elsif answer == "update"

  elsif answer == "quit"
    puts "DON'T FORGET TO STAY HYDRATED!!"
    
  else puts "ERROR I don't understand your response"
    

  end 
end 


