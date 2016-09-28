class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
			@gender = gender
			@ethnicity = ethnicity
			@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
			@age = rand(141)
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "#That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << (reindeer_name)
	end
end

#DRIVER CODE
puts
klaus = Santa.new("male","Japanese")
klaus.speak
klaus.eat_milk_and_cookies("warm chocolate chip cookie")
puts klaus.age
puts klaus.celebrate_birthday
puts klaus.get_mad_at("Prancer")
puts "#{klaus.ethnicity} santa is #{klaus.age} years old"
klaus.gender = "It's a Mystery!"
puts "Santa's new gender is #{klaus.gender}!"

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas <<  Santa.new(example_genders[i], example_ethnicities[i])
end

p santas

# santas.each do |claus|
# 	claus.eat_milk_and_cookies("delicious choco choco chip cookie")
# end
