# module Shout
#   def self.yell_angrily(words)
#   	words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!!!" + " =) "
#   end
# end

# #Driver Code
# puts Shout.yell_angrily("I don't know what we're yelling about")
# puts Shout.yelling_happily("Hurray for Science")

module Shout
  def yell_angrily(words)
  	words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!!!" + " =) "
  end
end

class CrankyOldMan
	include Shout
end

class HappyGraduate
	include Shout
end

old_man = CrankyOldMan.new
puts old_man.yell_angrily("Get off my property you damn kids")
happy_grad = HappyGraduate.new
puts happy_grad.yelling_happily("I'm the king of the world")
