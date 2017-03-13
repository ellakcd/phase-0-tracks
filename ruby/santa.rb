class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance..."
	end

	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "The was a good #{type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.remove(reindeer)
		@reindeer_ranking << reindeer
	end

	# def gender=(new_gender) 
	# 	@gender = new_gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

end


santy = Santa.new("N/A", "N/A")
santy.speak
santy.eat_milk_and_cookies("oreo")

santas = []
genders = ["male", "female", "none of your business"]
ethnicities = ["black", "white", "asian"]
l = genders.length 
l.times do |i|
santas << Santa.new(genders[i], ethnicities[i])
end

puts santas[1].age
puts santas[1].celebrate_birthday
puts santas[1].age
puts santas[1].ethnicity
puts santas[1].gender = "new_gender"

