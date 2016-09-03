# pairing between Sofia Cepeda & Arra Dacquel

def sandwich
  item_1 = "bread" 
  item_2 = "peanut butter"
  item_3 = "jelly" 
  puts "What Do I need for a PB&J?"
  yield(item_1, item_2, item_3)
end

sandwich { |item_1, item_2, item_3| puts "We need #{item_1}, #{item_2}, and #{item_3}!" }

#############################

students = ["Bob", "Carrie", "Steven", "Spongebob", "Patrick", "Will", "Sandy"]

puts students

students.each do |student|
  student = student.downcase!
end 
puts "Roll Call:"

puts students 
students.map! do |student|
  student = student.upcase!
  student = student.insert(-1, "!")
end 

puts "You didn't hear me, so this time a little louder:"
puts students 

puts "Still missing some students:"
students.delete_if { |student| student.include? "O"}
puts students

students.reject! { |student| student.include? "N"}
  until
   students[-1] = "WILL"
end
p students  

students.keep_if { |student| student =~ /[R]/ }
p students


students.select! { |student| student =~ /[E]/ }
puts "The only one not here is:"
p students 


########################

grades = {
  science: 59,
  math: 70, 
  english: 85,
  history: 48,
  art: 62,
  music: 86,
  gym: 90,
  health: 52
}

puts grades 

grades.each do |course, grade|
  if grade < 60 
    puts "Your grade of #{grade} means you failed #{course}."
  else 
    puts "Your grade of #{grade} means you passed #{course}."
  end 
end 

grades.keep_if { |course, grade| grade > 50 }
puts grades 

grades.delete_if { |course, grade| grade > 68 }
puts grades 

grades.select { |course, grade| grade  > 55 }
puts grades


your_idea = grades.map do |course, grade|
  puts "What do you think your grade in #{course} should have been?"
  new_grade = gets.chomp
  grade_idea = "#{course}: #{new_grade}"
end 



p "You think your grades should have been: "
puts your_idea 

