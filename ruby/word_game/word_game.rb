# prompt user1 for secret word
# store secret word 
# create hash marks for each letter of the word 
#set the counter to 2 more than the length of the word 
# allow user two to guess a letter
# IF the letter is in the word, print the letter
# ELSE allow user2 to keep guessing and say that letter is not in the word, decrease guesses 
# IF user2 guesses all the letters say congrats
# ElSE tell user2 they lost
# IF user2 guesses a letter more than twice don't make the guess count go up 

class Word_game
  attr_reader :is_over, :new_word
  attr_accessor :guess_count, :letter_bank

  def initialize(word)
    @new_word = word
    @guess_count = 0 
    @is_over = false
    @blanks = "_"
    @letter_bank = []
  end 

#prints hash marks and sets guess count 
  def blank_word(word)
  @blanks = "-" * word.length 
  p @blanks
  @guess_count = @new_word.length + 2
  puts "You have #{@guess_count} tries to guess the word"
  @blanks
  end 
  
#checks if letter is included in word  
  def include_letter(word, letter)
    index = 0 
    if @letter_bank.include?(letter) 
      puts "You already tried this letter"
    else 
    word.each_char do |l|
      if l == letter
      @blanks[index] = letter
        end 
      index += 1
      end 
    @guess_count -= 1 
    @letter_bank << letter
    end 
    puts "You have #{guess_count} guesses left"
    p @blanks
  end

  #prompts user when game is done
  def end_game
    if @guess_count == 0 && @blanks != @new_word
      puts "The game is over, Better luck next time :("
      @is_over = true
    elsif @blanks == @new_word
      puts "Congrats you guessed the secret word! :)"
      @is_over = true
    end 
  end 
end 

# #user interface 

puts "Welcome to the Secret Word Guessing Game!"

#asks user for secret word
puts "User 1 give me the secret word:"
word = gets.chomp
word.downcase!

#initializes game and sets hash marks 
game = Word_game.new(word)
game.blank_word(word)
puts "User 2 try to guess the word, but be careful you only get 2 extra guesses!"

#asks user for input until number of guesses are over or game is won 
while !game.is_over
puts "User 2 guess a letter in the secret word:"
letter = gets.chomp
letter.downcase!
game.include_letter(word, letter)
game.end_game
end


