class Puppy

  def initialize
    p "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    counter = 0
    while counter < integer
      puts "Woof!"
      counter += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(number)
    dog_years = number * 7
    dog_years
  end

  def play_dead
    puts "*plays dead*"
  end
end

# DRIVER CODE

puppy = Puppy.new

puppy.fetch("ball")

puppy.speak(3)

puppy.roll_over

puppy.dog_years(2)

puppy.play_dead

######################################

class Gymnast

  def initialize
    p "Initializing new Gymnast instance ..."
  end

  def flip
    p "*flips*"
  end

  def jump
    p "The gymnast has jumped!"
  end
end

counter = 1
gymnast_array = []

until counter == 50
  gymnast_array << Gymnast.new
  counter +=1
end

gymnast_array.each do |instance|
  instance.flip
  instance.jump
end