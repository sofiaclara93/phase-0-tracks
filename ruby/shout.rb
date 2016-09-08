module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(saying)
    saying + "!" + " :)"
  end 
end



puts Shout.yell_happily("Happy")
puts Shout.yell_angrily("Mad")