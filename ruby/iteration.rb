# def favorite_animals
# 	puts "Hi"
# 	yield("dogs", "cats")
# end
# favorite_animals {|dogs,cats| puts "I love, #{dogs} and #{cats}"}

us_states = ["Florida", "Montana", "Oregon", "Texas"]

big_cities = {
	east_coast: "New York",
	west_coast: "San Diego",
	central: 	"Chicago",
	south_east: "Miami"
}

# us_states.each do |state_name|
# 	us_states.reverse
# end

# p us_states

# us_states.each do |state|
# 	 puts state 
# end

# p us_states

# p us_states

# us_states.map! do |state|
# 	puts state
# 	state.reverse
# end

# p us_states

# p big_cities

# big_cities.each do |cities|
# 	puts cities
# end

# p big_cities

number_array = [1, 2, 3, 4, 5]

name_hash = {
	bob: "old",
	frank: "young",
	lisa: "very old",
	valentina: "very young"
}

p number_array
p name_hash


# number_array.delete_if do |number|
# 	if number < 17
# 		true
# 	else
# 		false
# 	end
# end

# p number_array

# number_array.keep_if do |number| 
# 	if number == 20
# 		true
# 	else
# 		false
# 	end
# end

# p number_array

number_array.select.each |i| i.odd?

p number_array


#iterate through the array with. each
# letters = ["a", "b", "c", "d", "e"]
# new_letters = []
# puts "Original data:"
# p letters
# p new_letters

# letters.each do |letter|
# 	new_letters << letter.next
# end

# puts "After .each call:"
# p letters
# p new_letters

# #########

# numbers = {1 => "one", 2 => "two", 3 => "three"}

# #iterate though the hash with . each


# numbers.each do |digit, word|
# 	puts "#{digit} is spelled out as #{word}"
# end


# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# #iterate through the array with .map
# letters.map! do |letter|
# 	puts letter
# 	letter.next
# end

# puts "After .map call:"
# p letters
