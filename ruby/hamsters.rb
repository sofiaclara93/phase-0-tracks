puts "What's the hamster's name?"
  name = gets.chomp
puts "How loud is the hamster from 1-10?"
  volume = gets.chomp
  volume = volume.to_i
puts "What is the hamster's fur color?"
  fur = gets.chomp
puts "Is the hamster a good candidate for adoption?(y/n)"
  candidate = gets.chomp
puts "What is the hamster's age?"
  age = gets.chomp
  age = age.to_i  

if name == ""
   name = ""; 8.times{name << (65 + rand(25)).chr} 
end 
if volume < 1 || volume > 10
  volume = "N/A"
end
if candidate == "y"
  candidate = "Your hamster is a candidate for adoption!"
elsif candidate == "n"
  candidate = "Your hamster is not a candidate for adoption!"
else
  candidate = "Your adoption answer needs to be reviewed." 
end
if age == ""
  age = nil
  puts "unavailable" 
end


puts " Your hamster's name is: #{name}.

Your hamster has a volume level of #{volume}. 

Your hamster's fur color is #{fur}.

#{candidate}

Your hamster is #{age} years old."

