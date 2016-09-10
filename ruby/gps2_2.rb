# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# ask user for input of list items
# store as key within hash structure
# set default quantity
# ensure all hash contents are lowercase
# print the list to the console [can you use one of your other methods here?]
# output: grocery list in hash form
grocery_hash = {}


def create_list(item_list, hash)
  item_array = item_list.split(" ")
  quantity = 1 
  item_array.each do |item|
    hash[item] = quantity
end
  hash 
end

create_list("carrots apples cereal pizza", grocery_hash)


# Method to add an item to a list
# input: item name and optional quantity
# steps:
# ask user if they need to add any items
#   IF yes, add key and value to grocery list hash
#   ELSE, print list contents
# output: return the updated hash

def add_item(item, hash)
  hash[item] = 1
  hash 
end 


add_item("banana", grocery_hash)

# Method to remove an item from the list
# input: item that user wants to remove
# steps:
# ask user if they want to remove an item from list
#   IF yes, ask for item name
#     IF item exists in hash, remove it from hash
#     ELSE print an error message
#   ELSE, proceed to output
# output: return the updated hash

def remove_item(item, hash)
  hash.delete(item)
  p hash
end 

remove_item("banana", grocery_hash)
# Method to update the quantity of an item
# input: item that user wants to update/updated quantity
# steps:
# Ask which item they want to update
# ask for updated quantity
#   IF item exists in hash, update the value with user given quantity
#   ELSE print an error message   
# output: return the updated hash



# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
# user asks for list to be printed
# print value then key for user to view
# output:
# print out each key and value of grocery list hash


