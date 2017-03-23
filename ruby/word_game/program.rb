# Guessing Game class

# initialize with a word
# set the instance of that word equal to the input word
# set the number of guesses equal to the length of the word + 2
# set the display to as many dashes as the word is long

# method: make guess 
# takes a letter
# increments guesses by 1
# checks if the word includes the letter
# iterates through the word and if a letter is the guessed letter, replace the dash with that letter
# displays the current feedback

# method: display
# print the display (and the current guess count?)

# method: 


# class Guessing_game
# 	attr_accessor :guesses, :is_over

# 	def initialize(word)
# 		@word = word
# 		l = word.length
# 		@guesses = 0
# 		@display = "_" * l
# 		@guessed_letters = []
# 		@is_over = false
# 	end

# 	def check_guess(letter)
# 		@guesses += 1 unless @guessed_letters.include?(letter)
# 		@guessed_letters << letter unless @guessed_letters.include?(letter)
# 		if @word.include?(letter)
# 		word.each_with_index do |char, i| 
# 			@display[i] = letter if char == letter
# 		end
# 		end
# 		puts @display 
# 		win if @display == @word 
# 		lose if @guesses == word.length
# 	end

# 	def win
# 		puts "you got it!"
# 		@is_over = true
# 	end

# 	def lose
# 		puts "ha ha, you're out of guesses!"
# 		@is_over = true
# 	end

# end



# puts "Welcome to the guessing game!"
# game = Guessing_game.new("word")

# while !game.is_over
# 	puts "Guess a letter!"
# 	letter = gets.chomp
# end




class Guessing_game
	attr_accessor :word, :length, :guesses, :guess_limit, :display, :guessed_letters, :game_over

	def initialize(word)
		@word = word.split("")
		@length = word.length
		@guesses = 0
		@guess_limit = @length + 2
		@display = Array.new(@length){"*"}
		pretty_version(@display, @guesses, @guess_limit)
		@guessed_letters = []
		@game_over = false
	end

	def check_guess(letter)
		if @guessed_letters.include?(letter)
			puts pretty_version(@display, @guesses, @guess_limit)
		elsif @word.include?(letter)
			@guesses += 1
			@guessed_letters << letter
			@word.each_with_index do |char, i|
				@display[i] = letter if char == letter
			end
			puts pretty_version(@display, @guesses, @guess_limit)
		else 
			@guesses += 1
			@guessed_letters << letter
			puts pretty_version(@display, @guesses, @guess_limit)
		end 
		win if @word == @display
		lose if @guesses == @guess_limit
	end

	def win
		@game_over = true
		puts "yay! you win!"
	end

	def lose 
		@game_over = true
		puts "ha ha you lose!"
	end

	def pretty_version(arr, num1, num2)
		arr.each {|char| print char}
		puts " (you've made #{num1} guesses out of #{num2})"
	end

end




# puts "Enter a word, player 1!"
# word = gets.chomp
# game1 = Guessing_game.new(word)


# until @game_over do 
# puts "guess a letter, player 2!"
# letter = gets.chomp
# game1.check_guess(letter)
# end

# puts "do you want to play again?"






