require_relative "program"

describe Guessing_game do 
	let(:word) {Guessing_game.new("hello")}

	it "check if the guessed letter is in the word" do
		expect(word.check_guess("o")).to eq true
	end
	




	it "displays the current state of the word" do
		expect (word.pretty_version(["h", "*", "l", "l", "*"], 2, 3).to eq "h*ll* (you've made 4 guesses out of 7))"
	end
	
end