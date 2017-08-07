class Game
	attr_accessor :original_word, :guess, :guessing_limit, :guess_counter, :mystery_word

	def initialize
		@original_word = ""
		@guess = []
		@guessing_limit = 0
		@guess_counter = 0
		@mystery_word = ""
	end

	def blanks(word)
		@original_word = "#{word}"
		spaced_word = "#{word}".gsub(/./) {|s| s + ' '} 
		@mystery_word = spaced_word.tr('a-z', '_')
		spaced_word.tr!('a-z', '_')
	end

	def guess_limit
		@guess_limit = "#{@original_word}".length * 2
	end

	def letter_guess(letter)
		@guess
		@guess.push("#{letter}")
		@guess_counter = @guess.length.to_i
		@guess

		if @guess.count("#{letter}") > 1
			@guess = @guess.uniq
			@guess
		end

		@guess
		@guess_counter

		if @guess_counter > @guess_limit.to_i
			@guess = @guess.pop
			@guess
		end

		@guess_counter
		@guess
	end

	def letter_reveal
		@guess
		@original_word
		@mystery_word
		str = @original_word.split('')
		str_new = str.map do |letters|
			if @guess.include?(letters)
				@original_word.push[@guess.index(letters)]
			end
		end
		str_new.join
	end
end