# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " :)"
# 	end

# end


# puts Shout.yell_angrily("Hello")
# puts Shout.yell_happily("Hello")


module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + " :)"
	end
end

class Baby
	include Shout
end

class Coach
	include Shout
end

baby = Baby.new
puts baby.yell_angrily("goo goo ga ga")
puts baby.yell_happily("goo goo ga ga")


coach = Coach.new
puts coach.yell_angrily("Do you realize we just lost?")
puts coach.yell_happily("We won")
