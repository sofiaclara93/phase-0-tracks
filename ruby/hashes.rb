#explore the thing -array

animals = ["dog", "cat", "elephant", "mouse"]

my_favorite = animals[2]

puts my_favorite

puts animals[6]
#doesn't print anything if index doesn't exist

puts "what is your favorite animal?"
your_favorite = gets.chomp

animals << your_favorite

puts animals



# create list of items to be answered
# Get the user to answer prompts
# Convert the answer to data type, store in symbol
# print answers back 
# ask the answer if they need to update
# if yes, ask which symbol, ask new key and update
# print answer again and exit

client = {
}

puts "What is your first name?"
  name = gets.chomp
  client[:name] = name
puts "How old are you?"
  age =gets.chomp
  client[:age] = age.to_i

puts "Does your client have children? (yes or no)"
  kids = gets.chomp.downcase
  client[:children] = kids
    if client[:children] == 'yes'
      puts "How many children are in your family?"
      client[:kids] = gets.chomp.to_i
    end 

puts "What is your decor theme?"
  theme = gets.chomp
client[:decor] = theme

puts client

loop do 
puts "Which category would you like to update?(if none, enter 'none')"
answer = gets.chomp
break if answer == "none"

new_sym = answer.to_sym
puts "What is the change?"
new_info = gets.chomp
client[new_sym] = new_info

client[:age] = new_info.to_i 
client[:kids] = new_info.to_i

end

puts client
