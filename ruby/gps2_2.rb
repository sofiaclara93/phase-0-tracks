# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# store as key within hash structure
# set default quantity
# ensure all hash contents are lowercase
# output: RETURN grocery list in hash form
grocery_hash = {}


def create_list(item_list, hash)
  item_array = item_list.split(" ")
  quantity = 1 
  item_array.each do |item|
    hash[item] = quantity
end
  hash 
end


# Method to add an item to a list
# input: item name 
# steps:
#   add key and value to grocery list hash
# output: RETURN the updated hash

def add_item(item, hash)
  hash[item] = 1
  hash 
end 




# Method to remove an item from the list
# input: item that user wants to remove
# steps:
#     IF item exists in hash, remove it from hash
# output: RETURN the updated hash

def remove_item(item, hash)
  hash.delete(item)
  hash
end 


# Method to update the quantity of an item
# input: item that user wants to update/updated quantity
# steps:
#   IF item exists in hash, update the value with user given quantity
# output: RETURN the updated hash

def update(item, quantity, hash)
  hash[item] = quantity
  hash
end 



# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
# print value then key for user to view
# output:
# print out each key and value of grocery list hash

def print_list(hash)
  hash.each do |item, quantity| 
    puts "Don't forget to buy #{quantity} #{item}"
  end 
  hash 
end



create_list("carrots apples cereal pizza", grocery_hash)
add_item("Lemonade", grocery_hash)
add_item("Tomatoes", grocery_hash)
add_item("Onions", grocery_hash)
add_item("Ice cream", grocery_hash)
update("Lemonade", 2, grocery_hash)
update("Tomatoes", 3, grocery_hash)
update("Ice cream", 4, grocery_hash)
update("Ice cream", 1, grocery_hash)
remove_item("Lemonade", grocery_hash)

print_list(grocery_hash)


