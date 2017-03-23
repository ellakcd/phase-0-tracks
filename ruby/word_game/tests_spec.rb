require_relative "program"

describe Guessing_game do 
	let(:word) {Guessing_game.new("hello")}

	it "checks if the guessed letter is in the word" do
		expect(word.check_guess("o")).to eq nil
	end
	
	it "displays win message and ends game" do
		expect(word.win).to eq nil
	end

	it "displays loss message and ends game" do
		expect(word.lose).to eq nil
	end

	it "exits game" do
		expect(word.game_over).to eq nil
	end

	it "displays the current state of the word" do
		expect (word.pretty_version(["h", "*", "l", "l", "*"], 2, 3)).to eq "h*ll* (you've made 4 guesses out of 7))"
	end
	
end