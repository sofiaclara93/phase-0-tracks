# use alphabet as string
# find matching letters in alphabet 
# assign index 
# print next index letter 

def encrypt(word)
  msg = "  abcdefghijklmnopqrstuvwxyza ".split("")
  index = 0 
  while index < word.length
  location = msg.index(word[index])
  word[index] = msg[location+1]
  index += 1
  end
  word
end

#puts encrypt("abc")
#puts encrypt("zed")




# assign alphabet to string
# find matching letters in alphabet 
# assign index to location
# subtract location by 1 
# print previous index 

def decrypt(word)
  msg = "  abcdefghijklmnopqrstuvwxyza ".split("")
  index = 0 
  while index < word.length
  location = msg.index(word[index])
  word[index] = msg[location-1]
  index += 1
  end
  puts word
  puts "Ok, Bye!"
end 

#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))
#This nesting works because it runs through one method first, 
#takes that answer and puts it through the next method


puts "Do you want to encrypt or decrypt your code?"
  answer = gets.chomp 

puts "Give me code word"
 code = gets.chomp
 
   if answer == "encrypt" 
    puts encrypt(code)
   else
    puts decrypt(code)
   end


