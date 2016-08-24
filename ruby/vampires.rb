i = 0 

puts "How many employees are we processing?"
  number = gets.chomp


while i < number.to_i

  puts "What is your name?"
    name = gets.chomp
  puts "How old are you?"
    age = gets.chomp
  puts "What year were you born?"
    year = gets.chomp
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    garlic = gets.chomp
      if garlic == "y" 
         garlic = true
      elsif garlic == "n"
        garlic = false
      end 
  puts "Would you like to enroll in the company’s health insurance?(y/n)"
    enroll = gets.chomp 
      if enroll == "y" 
        enroll = true
      elsif enroll == "n" 
        enroll = false
      end

  if (age.to_i != 2016 - year.to_i) && (garlic == false && enroll == false)
    puts "Almost certainly a vampire."
  elsif (age.to_i != 2016 - year.to_i) && (garlic == false || enroll == false)
    puts "Probably a vampire."
  elsif name == "Drake Cula" || name == "Tu Fang" 
    puts "Definitely a vampire."
  elsif (age.to_i == 2016 - year.to_i) && (garlic || enroll) 
    puts "Probably not a vampire."
  else
    puts "Results inconclusive"
  end 

  valid_input = false 
  
  until valid_input
      puts "Enter your allergies:"
        allergy = gets.chomp
      if allergy == "done" || allergy == "Done"
        valid_input = true
      elsif allergy =="sunshine" || allergy == "Sunshine"
        puts "Probably a vampire."
        valid_input = true
      end 
  end

  i += 1

end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


