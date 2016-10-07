# Virus Predictor

# I worked on this challenge with: Ryan Austin.
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative

#require_relative is used to bring in files to import certain ruby data. Where require is used to bring in modules
#and gems to be used within a program.

require_relative 'state_data'

class VirusPredictor
	attr_reader :state, :population, :population_density

	# Declaring the variables for the creation of a new class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Helps to print data to the screen for the user to see
  def virus_effects
    puts "The amount of deaths in #{@state} will be #{predicted_deaths} and will take #{speed_of_spread} months long."
  end

  # def print_virus_outcome
  # STATE_DATA.each do |state, population_data|
 	# # Population data = {population_density: 94.65, population: 4822023}
 	# VirusPredictor.new(state, population_data[:population_density],population_data[:population]).virus_effects
 	# end
  # end


#private methods can only be called from within the class itself. Good to use when you wouldn't 
#want things manipulated

  private
 # Takes a float value and puts it in a range and multiplies the value based on the density
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    number_of_deaths = (@population * 0.4).floor if @population_density >= 200
      
    number_of_deaths = (@population * 0.3).floor if @population_density >= 150
      
    number_of_deaths = (@population * 0.2).floor if @population_density >= 100
      
    number_of_deaths = (@population * 0.1).floor if @population_density >= 50
      
    number_of_deaths = (@population * 0.05).floor if @population_density >= 0
      
   # end
   # print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  	# Using density to calculate how fast the virus can spread at a monthly rate the more dense an area quicker the 
	# virus will spread

  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

   # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
# Within a loop define a variable that acts as a constant that calls viruspredictor.new
# takes parameters of state and within the state gets values of population density and state population


 STATE_DATA.each do |state, population_data|
 # Population data = {population_density: 94.65, population: 4822023}
 VirusPredictor.new(state, population_data[:population_density],population_data[:population]).virus_effects
 end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
	
What are the differences between the two different hash syntaxes shown in the state_data file?
The symbols are generally prefered over the string and hash rocket combination even though they provide the same
function. The symbols are basically stripped down strings where only one instance can exist in the program
so it can run negligibly faster and slightly less characters are needed ':' as compared to ' "" =>'

What does require_relative do? How is it different from require?
Require_relative brings in the data from another ruby file as if it was copy and pasted into the same file.
Require is used more for gems and accessing elements from the ruby library itself.

What are some ways to iterate through a hash?
You can use the .each do method with a block as we did in the Driver code. You can also use .each_key or
.each_value if only that specific data type is needed.

When refactoring virus_effects, what stood out to you about the variables, if anything?
There seemed to be an over lap calling the variables there and in the other two methods as well. The attr reader
method saved us some space in the code.

What concept did you most solidify in this challenge?
Iterating through the nested has was helpful. I don't recall needing to do that before so the practice and syntax
was very helpful.
=end