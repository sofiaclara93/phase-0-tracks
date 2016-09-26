# Create a program that tracks how much water you drink in a day


# require gems
require 'sqlite3'
require 'date'

# create SQLite3 database
$db = SQLite3::Database.new("water.db")

#create tables
create_water_amt_table = <<-SQL
  CREATE TABLE IF NOT EXISTS water(
    id INTEGER PRIMARY KEY,
    day VARCHAR(255),
    date_stamp VARCHAR(255),
    amount INT
  )
SQL

# creates table (if it's not there already)
$db.execute(create_water_amt_table)


# add water data
def enter_water_amt(db, day, date_stamp, amount)
  $db.execute("INSERT INTO water (day, date_stamp, amount) VALUES (?, ?, ?)", [day, date_stamp, amount])
end 


# display summary of day 
def summary(db, today)
  day_amt = $db.execute (<<-SQL
    SELECT * FROM water WHERE day= "#{today}";
    SQL
    )
  p day_amt
  # summary = $db.execute("SELECT * FROM water")
  # p summary
end 

# delete amount of water 
def delete_entry(db, id)
  $db.execute (<<-SQL
    DELETE FROM water 
    WHERE id= "#{id}";
    SQL
    ) 
end 

# update entry (like if user entered wrong amount)
def update_amt(db, amount, id)
  updates_amt = $db.execute (<<-SQL 
  UPDATE water SET amount= "#{amount}" WHERE id= "#{id}";
  SQL
  )
end 


#METHODS THAT CALL ON DATABASE METHODS 
 
# prompts user to input water amount 
def add_water
  date = DateTime.now 
  date_stamp = date.strftime "%m/%d/%Y"
  day = date.strftime "%A"

  day

  puts "Please enter the amount of water you drank in oz."
  h2o = gets.chomp
  amount = h2o + " oz."

  enter_water_amt($db, day, date_stamp, amount)
end 


def daily_summary
  date_today = Date.today
  today = date_today.strftime "%A"
  
  summary($db, today)
end 

# asks user which entry they want to enter 
def update
  puts "Enter the id of the log entry you want to update:"
  id_number = gets.chomp

  puts "Enter the new amount of water in oz."
  h2o = gets.chomp
  new_amount = h2o + " oz."

  update_amt($db, new_amount, id_number)

end 

# prompts users to enter id of entry to delete
def delete
  puts "Enter the id of the log you want to delete:"
  id_number = gets.chomp

  delete_entry($db, id_number)
end 


# USER INTERFACE
puts "WELCOME TO YOUR WATER INTAKE TRACKER!!"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
answer = "not quit"
until answer == "quit"
  puts "What would you like to do?"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Would you like to add water to your log? (ENTER: add)"
  puts "Would you like to view your daily log? (ENTER: summary)"
  puts "would you like to update and entry? (ENTER: update)"
  answer = gets.chomp
  answer.downcase!

  if answer == "add"
    add_water

  elsif answer == "summary"
    daily_summary 

  elsif answer == "update"
    puts "Would you like to update or delete an entry? (ENTER: update or delete)"
    selection = gets.chomp
    if selection == "update"
      update
    elsif selection == "delete"
      delete
    end 

  elsif answer == "quit"
    puts "DON'T FORGET TO STAY HYDRATED!!"
    
  else puts "ERROR I don't understand your response"
    
  end 
  
 end 



