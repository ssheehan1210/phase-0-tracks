# Release 0: Attempt a Tricky Algorithm

# We will be making an algorithm that will take a person's name
# and change it into a fake name with specific conditions.

# Start by making the person's real name, making sure it includes
# a first and last name. Create an array based on the real name
# except with both names as separate strings.

# Also, to avoid confusion or incorrect capitalization, all of the
# letters will be set to lowercase until the end when proper
# capitalization can be applied.

puts "What is the name you wish to change?"

real_name = gets.chomp



# Set up the loop so that the algorithm will continue to repeat
# until the user inputs 'quit' instead of a name.

until real_name == "quit"

# real_name = "Felicia Torres"
fake_name_initial = real_name.downcase.split
fake_name_one = []
fake_name_two = []
fake_name_three = []
fake_name_four = []
fake_name_five = []
fake_name_six = []
fake_name_seven = []
fake_name_eight = []
fake_name_final = []

 puts "Original Name:"
 p real_name
# p fake_name_initial
# p fake_name_final



# Change the letters in both the first and last name to be in
# reverse order.

fake_name_one << fake_name_initial.reverse!

# puts "Name Data After First Section:"
# p real_name
# p fake_name_initial
# p fake_name_one



# Next, make it so that the person's first and last name will be
# swapped with each other.

fake_name_two = fake_name_one.rotate

# puts "Name Data After Second Section:"
# p real_name
# p fake_name_one
# p fake_name_two



# After the swap, make it so that all of the vowels are changed
# into the next respective vowel in the alphabet, and that all
# consonants are changed into the next respective consonant.

# To do this, start by defining a method to change each individual
# vowel in the first and last name.

def vowel_adv(str)
	vowels = ["a", "e", "i", "o", "u"]
	str = str.split('')
	str_new = str.map do |char|
		if vowels.include?(char)
			vowels.rotate(1)[vowels.index(char)]
		else
			char
		end
	end
	str_new.join
end

# In order for this method to work, we need to change the first
# and last names back into a single string. Use the repetition
# method to change them into a string and then apply the vowel
# advancement method.

fake_name_three = fake_name_two * ","
fake_name_four = vowel_adv fake_name_three

# Once the vowels are done, define another method for the consonants.

def consonant_adv(str)
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	str = str.split('')
	str_new = str.map do |char|
		if consonants.include?(char)
			consonants.rotate(1)[consonants.index(char)]
		else
			char
		end
	end
	str_new.join
end

# Since we've already changed our names into a single string agiain,
# go straight to applying the consonant advancement method.

fake_name_five = consonant_adv fake_name_four

# Once each of letters are advanced, use gsub(pattern, replacement)
# to replace the comma with a space to visually seperate the naems.

fake_name_six = fake_name_five.gsub(/[,]/, " ")

# puts "Name Data After Third Section:"
# p real_name
# p fake_name_two
# p fake_name_three
# p fake_name_four
# p fake_name_five
# p fake_name_six



# Finally, make it so the names are properly capitalized and
# complete the fake name. Be sure to print out the results to ensure
# that the method successfully created the desired fake name.

# To get the capitalization for both the first and last names, you
# will need to briefly split up the string again and modify both
# names to capitalize their first letters. Then bring them back
# together as you did before.

fake_name_seven = fake_name_six.split

fake_name_seven.map! do |letters|
	letters.capitalize
end

fake_name_eight = fake_name_seven * ","

fake_name_final = fake_name_eight.gsub(/[,]/, " ")

puts "Final Results of Name Data:"
#p real_name
#p fake_name_seven
#p fake_name_eight
p fake_name_final

# Now that the fake name has been made, it and the real name will
# need to be stored in a data structure.

name_database = {
	true_names: [],
	alias_names: [],
	all_names: {}
}

name_database[:true_names].push(real_name)
name_database[:alias_names].push(fake_name_final)
name_database[:all_names].store(real_name, fake_name_final)



# Ask if the user would like to input another name, while giving
# the option to quit. If the user doesn't quit, the algorithm will
# loop back to the beginning.

puts "What other name do you want to try? (type 'quit' if you wish to exit)"
	real_name = gets.chomp

redo unless real_name == "quit"

puts "Closing now. Thank you."

name_database[:all_names].each do |real, fake|
	puts "#{real} is also known as #{fake}."
end

end

# Now that the user has logged out, we will be printing out the
# data to clarify what alias each name has.

# name_database[:all_names].each { |real, fake| puts "#{real} is also known as #{fake}." }
