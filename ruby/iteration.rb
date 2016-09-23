def favorite_animals
	puts "Hi"
	yield("dogs", "cats")
end

favorite_animals {|dogs,cats| puts "I love, #{dogs} and #{cats}"}
puts "block successfully ran!"


us_states = ["Florida", "Montana", "Oregon", "Texas"]

big_cities = {
	east_coast: "New York",
	west_coast: "San Diego",
	central: 	"Chicago",
	south_east: "Miami"
}

p us_states

us_states.each do |state|
	 puts state 
end

p us_states

us_states.map! do |state|
	puts state
	state.reverse
end

p us_states

p big_cities

big_cities.each do |cities|
	puts cities
end

p big_cities

puts ""

number_array = [1, 2, 3, 4, 5]

name_hash = {
	bob: "old",
	frank: "young",
	lisa: "very old",
	valentina: "very young"
}

p number_array
p name_hash


number_array.delete_if do |number|
	if number < 17
		true
	else
		false
	end
end

p number_array

number_array.keep_if do |number| 
	if number == 20
		true
	else
		false
	end
end

p number_array

number_array.take_while {|i| i < 3 }

name_hash.reject {|x, y| y == "very old"}

