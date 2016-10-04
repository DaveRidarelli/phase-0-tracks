# method to accept a word from user 1 and make it an array. 
# take a guess from user 2 and search array for matching letter
# Use if statement to ignore repeat guesses in side array
# print current array with every guess
# Congratulate or taunt upon completion

class WordguessGame
	attr_accessor :correct_array, :guessed_array, :secret_array, :new_guess
	
	# def accept a word from user 1 make it an array
	def new_game_word(word)
		@secret_array = word.chars
		@guessed_array = Array.new
		@correct_array = "*" * secret_array.length
	end
	
	#check guess and place in appropriate array
	def check_guess(new_guess)
		if @guessed_array.include?(new_guess) == true 
			puts "Already guessed! Try again!"
		elsif @secret_array.include?(new_guess) == true
				@secret_array.each do |letter|
				if @correct_array.include?(letter)
					print "#{letter} "
					puts "Nice guess!"
					@guessed_array.push(letter)
				else
					print "*"
				end
			end
		elsif secret_array.includes?(new_guess) == false
			puts "Stinky guess! Guess Again!"
			end
		else
			puts ""
		end
	end
	
	#check to see if correct array = secret_array
	def for_the_win
		if @secret_array == @correct_array
			puts "You got it!"
			congrats = @secret_array.join
			puts "You guessed the secret word of #{congrats}. Great Job! "	
	end

end

game = WordguessGame.new 
game.new_game_word(gets.chomp)
game.check_guess("f")
