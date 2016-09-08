# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!" + " :)"
#   end 
# end



# puts Shout.yell_happily("Happy")
# puts Shout.yell_angrily("Mad")

module Shout 
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
    puts words + "!" + " :)"
  end 
  end 

class Graduation 
 include Shout 
end 

class Wedding
  include Shout 
end 


graduation = Graduation.new
graduation.yell_angrily("I NEVER GOT TO PLAY A PRANK")
graduation.yell_happily("I GOT MY DIPLOMA")

wedding = Wedding.new
wedding.yell_angrily("THE FLORIST IS LATE")
wedding.yell_happily("YOU MAY NOW KISS THE BRIDE")