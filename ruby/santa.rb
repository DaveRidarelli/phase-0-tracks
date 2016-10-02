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

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#DRIVER CODE

counter = 0
while counter < 63

klaus = Santa.new(example_genders.sample,example_ethnicities.sample)

# klaus.speak
# klaus.eat_milk_and_cookies("warm chocolate chip cookie")
# puts klaus.age
# puts klaus.celebrate_birthday
# puts klaus.get_mad_at("Prancer")

puts "#{klaus.ethnicity} #{klaus.gender} santa is #{klaus.age} years old"
counter += 1
end


# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# example_genders.length.times do |i|
#   santas <<  Santa.new(example_genders[i], example_ethnicities[i])
#   puts "This #{example_ethnicities} santa's age is #{@age} and they identify as #{example_genders}"
# end

# santas.each do |claus|
# 	claus.eat_milk_and_cookies("delicious choco choco chip cookie")
# end
