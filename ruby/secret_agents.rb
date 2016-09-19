
=begin 

Encrypt Method
	1. 	type in string 
	2. 	use '.next' on the index number and a counter variable to change each letter 
		of string by incrementing one 
	3. 	use a loop to print out next letter of encrypted string

Decrypt Method
	1.	type in string
	2. 	use string of entire alphabet to reference previous letter compared to 
		index of secret word
	3. 	use loop to print out following letter of decrypted string

Release 5 Pseudocode
	1.	Write an if statement to run either encrypt or decrypt based on user input
	2. 	get password for encryption/decryption with gets.chomp
	3. 	run method on chosen encryption/decryption method
	
=end

#METHOD DECLARATIONS

# 'Encrypts' secret word by printing next highest letter in the alphabet
def encrypt(secret_word)
	#keeps track of letters in word
	counter = 0
	#loop through secret word replacing letter with next highest one
	#if statement prints 'a' instead of 'aa' if z is used in secret word
	while counter < secret_word.length
		if secret_word[counter].next == "aa"
			print "a"
			counter += 1
		else
			print secret_word[counter].next
  			counter += 1
  		end
	end
	
	puts ""
end

# 'Decrypts' secret word by printing next lowest letter in the alphabet
def decrypt(another_word)
	#keeps track of letters in word
	counter = 0
	#alphabet string for index reference
	alpha = "abcdefghijklmnopqrstuvwxyz"
	#loops through secret word. Assigns current letter to variable, matches
	#letter in alphabet string, and then subtracts one letter. letter 'a' will jump to 'z'
	#nicely due to -1 index referencing.
	while counter < another_word.length
		current_letter = another_word[counter]
  		current_position = alpha.index(current_letter)
  		print alpha[current_position - 1]
  		counter += 1
  	end
  	
  	puts""
end

#DRIVER CODE

#asks user for method to use, encrypt/decrypt
puts "Agent " + "00" + rand(10).to_s + " would you like to 'decrypt' or 'encrypt' a password?"
 	cryption_method = gets.chomp.downcase
#gets word from user
puts "What is your soon to be Top Secret Password?"
	p_word = gets.chomp
#displays word based on selection
if cryption_method == "encrypt"
	encrypt(p_word)
elsif cryption_method == "decrypt"
	decrypt(p_word)
else
	puts "mind your p's and q's agent. Try again"
end
	

=begin

	encrypt ("abc")
	encrypt ("zed")
	decrypt ("bcd") 
	decrypt ("afe")

 	Much to my chagrin, I could not get the decrypt(encrypt("swordfish")) 
 	nested method to work properly despite much googling & FMWG
 	According to the nilClasss error I'm guessing ruby does not like the 
 	fact I am trying to run .length on a bunch of different strings
 	put together. I hope to solve this when we learn hashes and arrays next week.

=end




