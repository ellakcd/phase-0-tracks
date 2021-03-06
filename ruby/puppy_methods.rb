# class Puppy

#   def initialize
#   	puts "Initializing new puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(num)
#   	num.times {puts "Woof!"}
#   end

#   def roll_over
#   	puts "*rolls over*"
#   end

#   def dog_years(years)
#   	years * 7 
#   end

#   def chase_tail(num) 
#   	num.times {puts "*chases tail*"}
#   end

# end


# poochie = Puppy.new
# poochie.fetch("bone")
# poochie.speak(4)
# poochie.roll_over
# poochie.dog_years(5)
# poochie.chase_tail(3)


# class Climber

# 	def initialize
# 		puts "Another new climber is born"
# 	end

# 	def belay(num)
# 		puts "Pass the belay test after just #{num} try/ies!"
# 	end

# 	def climb(num)
# 		puts "Climb you first 5.#{num}"
# 	end

# 	def stretch
# 		puts "Shake out those arms"
# 	end

# end


# climbers = []
# 50.times {climbers << Climber.new}
# climbers.each do |person| 
# 	person.belay(1)
# 	person.climb(6)
# 	person.stretch
# end






class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	human_years * 7
  end

  def play_dead
  	puts "*dies*"
  end

end


rocky = Puppy.new
rocky.fetch("ball")
rocky.speak(4)
rocky.roll_over
puts rocky.dog_years(5)
rocky.play_dead


class BBall_player

	def initialize
		puts "another player joins your team!"
	end

	def dribble(num)
		num.times {puts "*dribbles the ball*"}
	end

	def shoot
		puts "*shoots the ball for 3*"
	end

end


players = []
counter = 0
while counter < 50 do 
counter += 1
players << BBall_player.new
end

players.each do |player|
	player.dribble(5)
	player.shoot
end































