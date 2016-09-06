application = {
  name: " " ,
  address: " ",
  email: " ",
  phone: " ",
  fave_shade_of_blue: " ",
  wallpaper_prefrences: " ",
  ombre_is: " "
}

puts "Name:"
full-name = gets.chomp
application[:name] = full-name
puts "address:"
application[:address] = gets.chomp
puts "Email:"
application[:email] = gets.chomp
puts "Phone:"
application[:phone] = gets.chomp
puts "Fave shade of blue"
application[:fave_shade_of_blue] = gets.chomp
puts "Wallpaper Preference:"
application[:wallpaper_prefrences] = gets.chomp
puts "Ombre is:"
application[:ombre_is] = gets.chomp

p application
puts "Are they hired?"
application[:hire] = gets.chomp 