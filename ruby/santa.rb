class Santa 
  attr_reader :age, :ethnicity 
  attr_accessor :gender
  def initialize(gender, ethnicity)
    @gender = gender 
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 

    p "initializing Santa instance..."
  end 

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie} cookie!"
    cookie
  end 

  def celebrate_birthday
    @age = age + 1
  end 

  def get_mad_at(reindeer)
    @reindeer_ranking[-1] = reindeer
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
  end

  #getter method
  # def age
  #   @age 
  # end 

  #getter method 
  # def ethnicity 
  #   @ethnicity
  # end 

  #getter method 
  # def gender
  #   @gender
  # end 

  #setter method 
  # def gender=(reassigned_gender)
  #   @gender = reassigned_gender
  # end 

end 

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latinx", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

counter = 0
until counter == 100
  rand_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  rand_age = rand(0..140)
  puts "This Santa's gender is #{rand_santa.gender}, their ethnicity is #{rand_santa.ethnicity}, and their age is #{rand_age}"
  counter += 1
end 

#Test code 
#santa = Santa.new("female", "Latinx")
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")

#santas = []
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

#Test code
# santa.get_mad_at("Dasher")
# santa.gender = "male"


