
puts "What's your hamsters name?"
  name = gets.chomp

puts "How loud is your hamster? on a scale of 1-10"
  volume = gets.chomp.to_i

puts "What's your hamster's fur color?"
  color = gets.chomp

puts "Is your hamster good for adoption? yes or no?"
  adopt = gets.chomp
	case adopt
   	 	when 'y','Y','yes','Yes'
    	adopt = true
  		when 'n', 'N','no', 'No' 
    	adopt = false
	end

puts "What's your hamster's estimated age?"
  age = gets.chomp

  	if age == ""
   		 age = nil
  	end

puts "Your hamster's name is #{name}."
puts "On a scale of one to ten it ranks a #{volume} for loudness."
puts "Your hamster's fur color is #{color}."
puts "It is #{adopt} that this hamster is good for adoption." 
puts "Your hamster is most likely #{age} years old."