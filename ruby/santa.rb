class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "The was a good #{type}!"
	end

end


santy = Santa.new
santy.speak
santy.eat_milk_and_cookies("oreo")