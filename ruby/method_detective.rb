# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

other = "iNvEsTiGaTiOn".swapcase
puts other
# => “InVeStIgAtIoN”

add = "zom".insert(2, "o")
puts add 
# => “zoom”

space = "enhance".center(30)
puts space
# => "    enhance    "

caps = "Stop! You’re under arrest!".upcase
puts caps
# => "STOP! YOU’RE UNDER ARREST!"

word = "the usual".insert(-1, " suspects")
puts word
#=> "the usual suspects"

front = " suspects".insert(0, "the usual")
puts front
# => "the usual suspects"

last = "The case of the disappearing last letter".delete "./r"
puts last 
# => "The case of the disappearing last lette"

first = "The mystery of the missing first letter".slice(1..-1)
puts first 
# => "he mystery of the missing first letter"

minimize = "Elementary,    my   dear        Watson!".squeeze(" ")
puts minimize
# => "Elementary, my dear Watson!"

asc = "z".ord
puts asc
# => 122 
# (What is the significance of the number 122 in relation to the character z?) Ascii code 

count = "How many times does the letter 'a' appear in this string?".count "a"
puts count 
# => 4
