=begin pseudocode
	1. Create a Hash
	2. Take user input with gets.chomp and enter it into a hash
	3. Use if statements for proper data type storage
	4. Print out hash when questions are finished
	5. Finish with question to prompt user to update data (check out string to symbol method)
	6. run if statements for all potential data updates
	7. Print Hash and Exit
=end

client_info = {}

	puts "Enter client's name"
	client_info[:name] = gets.chomp

	puts "Enter client's age"
	client_info[:age] = gets.chomp.to_i

	puts "Enter client's number of children"
	client_info[:children] = gets.chomp.to_i

	puts "Enter client's decor theme"
	client_info[:decor_theme] = gets.chomp

	puts "Is the client super rich?"
	client_info[:super_rich] = gets.chomp
	
	puts "Does the client love donuts?"
	client_info[:loves_donuts] = gets.chomp

	if 	client_info[:super_rich] == "yes"
		client_info[:super_rich] = true
	else
		client_info[:super_rich] = false
	end
		
	if 	client_info[:loves_donuts] == "yes" 
		client_info[:loves_donuts] = true
	else
		client_info[:loves_donuts] = false
	end

puts ""
puts client_info
puts ""

	puts "Would you like to update an input? Type 'none' to skip."
		update_info = gets.chomp
	
	if update_info == "none"
		puts "Thanks here's the latest info!"
		puts ""
	else
		puts "which input would you like to update?"
		key_update = gets.chomp
		puts "and what is the updated info?"
		value_update = gets.chomp
			if key_update == "age"
				client_info[key_update.to_sym] = value_update.to_i
			elsif key_update == "children"
				client_info[key_update.to_sym] = value_update.to_i
			else
				if value_update == "true"
			 		value_update = true
			 		client_info[key_update.to_sym] = value_update
				elsif value_update == "false"
					value_update = false
					client_info[key_update.to_sym] = value_update
				else
					client_info[key_update.to_sym] = value_update
				end
			end

			puts ""
			puts "Thanks! Here's the latest info!"
			puts ""
	end
		
puts client_info