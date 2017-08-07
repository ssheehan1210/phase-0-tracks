# Assume the driver code will handle input and output as far as the user is
# concerned, meaning that I will need a class designed for a computer
# program to use and not one designed for a human to use directly. The
# driver code will be bridging the gap between human and Ruby object.

# Make a game that where ...
  # one user can enter a word, and another user attempts to guess it.
  # guesses are limited and the amount is related to the word's length.
  # repeated guesses don't count against the user.
  # the guessing player gets feedback on current state of the word (Ex: if
    # the secret word is "unicorn", the user will start seeing something
    # like "_ _ _ _ _ _ _"; which becomes "_ _ _ c _ _ _" after the user
    # guesses "c").
  # the user gets congratulatory message upon winning, and a taunt to loss.

require_relative 'first_game'

describe Game do
	let(:game) { Game.new }

	it "enters word and returns dashes for each letter" do
		expect(game.blanks("hello")).to eq "_ _ _ _ _ "
	end

	it "limits guesses to twice the word's length" do
		game.blanks("unicorn")
		expect(game.guess_limit).to eq 14
	end

	it "doesn't count repeated guesses" do
		game.blanks("hello")
		game.guess = ["h", "e"]
		expect(game.letter_guess("h")).not_to eq ["h", "e", "h"]
	end

	it "shows feedback on current state of the word" do
		game.blanks("example")
		game.guess = ["m"]
		expect(game.letter_reveal).to eq "_ _ _ m _ _ _ "
	end

	it "gives congratulatory or taunting message at the end" do
		game.blanks("loser")
		game.guess = [a, b, c, d, e, f, g, h, i, j]
		expect(game.victory).to eq false
	end
end