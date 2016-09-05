def new_letters(word)
  word.downcase!
  letters = "  aeiouabcdfghjklmnpqrstvwxyzb".split("")
  index = 0 
  while index < word.length 
    location = letters.index(word[index])
    word[index] = letters [location+1]
    index += 1 
  end 
  word 
end 

def upcase(words)
  new_word = [ ]
  new_words = words.split(' ')
  first = new_words[0]
  first_name = first.chars
  first_name[0].upcase!
  new_word << first_name.join('')
  
  last = new_words[1]
  last_name = last.chars
  last_name[0].upcase!
  new_word << last_name.join('')
  
end 

agents = [ ]

loop do 
puts "Give me a name:"
name = gets.chomp

break if name == "quit"

new_name = new_letters(name)
new_alias = upcase(new_name)
new_alias[0], new_alias[1] = new_alias[1], new_alias[0]


agents << new_alias.join(' ')

end 

puts "The agents true identities have been destroyed, Here are their new aliases:"
puts alias   
