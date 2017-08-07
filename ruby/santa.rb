class Santa
	attr_reader :ethnicity, :reindeer_ranking, :age
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete("#{reindeer_name}")
		@reindeer_ranking << "#{reindeer_name}"
	end

end

claus = Santa.new("N/A", "N/A")
claus.speak
claus.eat_milk_and_cookies("chocolate chip cookie")

santas = []
#santas << Santa.new("bigender", "white")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("male", "black")
#santas << Santa.new("N/A", "Kantonian-Alolan")
#santas << Santa.new("gender fluid", "N/A")
santas_genders = ["bigender", "female", "male", "N/A", "gender fluid"]
santas_ethnicities = ["white", "Latino", "black", "Kantonian-Alolan", "N/A"]

santas_genders.length.times do |i|
	santas << Santa.new(santas_genders[i], santas_ethnicities[i])
end

p santas

changing_santa = Santa.new("male", "white")
puts "This #{changing_santa.gender} santa is #{changing_santa.ethnicity} and is at the age of #{changing_santa.age}."
changing_santa.celebrate_birthday
puts "This santa is now at the age of #{changing_santa.age}."
changing_santa.get_mad_at("Vixen")
puts "Here is this santa's new ranking for his reindeer:"
p changing_santa.reindeer_ranking
changing_santa.gender = "female"
puts "This santa is now #{changing_santa.gender}."

p changing_santa.gender
p changing_santa.ethnicity
p changing_santa.reindeer_ranking
p changing_santa.age



santa_army = []

15.times do |a, b|
	a = santas_genders.sample
	b = santas_ethnicities.sample
	santa_army << Santa.new(a, b)
end

p santa_army





# Extra Notes and Coding:

# If we wanted to interact with them, we would need to loop through
# the array and call methods on each one.

# First, we make an array of genders to build santas with:
#genders = ["male", "female", "bigender", "unknown"]

# Then we make an empty container for our puppy collection:
#mall_santas = []

#puts "Iterating through genders list to create mall santas ..."
#genders.each do |gender|
#  puts "Creating a #{gender} santa ..."
#  mall_santas << Santa.new(gender, "N/A")
#  puts "There are now #{mall_santas.length} Santa instances in the mall_santas array"
#  puts "----"
#end

#puts "Testing each mall santa instance in the array to make sure they can speak ..."
#mall_santas.each do |san|
#  san.speak
#end



# Example of refactoring:
#nicks = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  nicks << Santa.new(example_genders[i], example_ethnicities[i])
#end

#p nicks

