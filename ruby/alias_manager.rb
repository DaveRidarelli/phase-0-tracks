# swap first and last names into arrays with split(' ') mind the spacing! and .reverse
# create two arrays one for vowels and one for the entire alphabet using .split(''). 
# Use .rotate to create two more arrays for encoding and referencing via .index
# Use a counter variable compared to the length of first name to loop through.
# Repeat process with last name.
# Display new name with .join and .capitalize

def spy_name_swapper(real_name)
	
	name_array = real_name.split(' ').reverse
	vowel_array = "aeiou".split('')
	spy_vowel_array = "aeiou".split('').rotate
	alphabet_array = "abcdefghijklmnopqrstuvwxyz".split('')
	spy_alphabet_array = "abcdefghijklmnopqrstuvwxyz".split('').rotate
	first_name = name_array[0].downcase.split('')
	last_name = name_array[1].downcase.split('')
	counter = 0
	fn_process_until = first_name.length
	ln_process_until = last_name.length
	
	while counter < fn_process_until
		if vowel_array.include? first_name[counter]
			vowel_letter = first_name[counter]
			spy_vowel_index = vowel_array.index(vowel_letter)
			first_name[counter] = spy_vowel_array[spy_vowel_index]
			counter += 1
		else
			consonant_letter = first_name[counter]
			spy_consonant_index = alphabet_array.index(consonant_letter)
			first_name[counter] = spy_alphabet_array[spy_consonant_index]
			counter += 1
		end
		
	end
	
	counter = 0 

	while counter < ln_process_until
		if vowel_array.include? last_name[counter]
			vowel_letter = last_name[counter]
			spy_vowel_index = vowel_array.index(vowel_letter)
			last_name[counter] = spy_vowel_array[spy_vowel_index]
			counter += 1
		else
			consonant_letter = last_name[counter]
			spy_consonant_index = alphabet_array.index(consonant_letter)
			last_name[counter] = spy_alphabet_array[spy_consonant_index]
			counter += 1
		end
		
	end
	
	return first_name.join('').capitalize + " " + last_name.join('').capitalize
	
end


puts "Enter A Name Agent 00" + rand(10).to_s + ". " + "Type 'quit' To Exit"
	code_name = gets.chomp
	code_name_array = []
	counter = 0
	
	
while code_name != "quit" 
	spy_name_swapper(code_name)
	code_name_array[counter] = "#{code_name} is also known as " + spy_name_swapper(code_name) + "."
	puts "Type Another name To Decode"
	code_name = gets.chomp
	counter += 1
end

puts code_name_array
puts ""
puts "Thanks Agent"
