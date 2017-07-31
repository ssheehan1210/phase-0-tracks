# 

# Ask for a name.

puts "What is your name?"
	emp_name = gets.chomp

# Ask for how old the person is and what year that person was born.

puts "How old are you?"
	emp_age = gets.chomp
puts "What year were you born?"
	emp_birth_year = gets.chomp

# Ask if they would like some of the garlic bread from our cafeteria.

puts "Would you like to try some of the garlic from our cafeteria? (y/n)"
	emp_garlic = gets.chomp

# Ask if they would like to enroll with our health insurance.

puts "Would you like to enroll with our company's health insurance? (y/n)"
	emp_health = gets.chomp

# Create true and false results based on if/else statements and/or case statements.

# If age is equal to the difference between the birth year and current year, and is
# willing to either eat garlic bread or get insurance, the result is "Probably not a
# vampire".

if emp_age.to_i < (2017 - emp_birth_year.to_i)
	emp_age = false
elsif emp_age.to_i > (2017 - emp_birth_year.to_i)
  emp_age = false
else
	emp_age = true
end

if emp_garlic == "y"
	emp_garlic = true
else
	emp_garlic = false
end

if emp_health == "y"
	emp_health = true
else
	emp_health = false
end

if emp_name == "Drake Cula"
	emp_name = false
elsif emp_name == "Tu Fang"
	emp_name = false
else
	emp_name = true
end

if emp_age && (emp_garlic || emp_health)
	answer = "Probably not a vampire."

# If age doesn't equal the difference of birth and current year, and either hates
# garlic bread or waives insurance, the result is "Probably a vampire".

elsif emp_age || (emp_garlic || emp_health)
	answer = "Probably a vampire."

# If age doesn't equal the difference of birth and current year, hates garlic bread,
# and waives insurance, the result is "Almost certainly a vampire".

elsif emp_age || (emp_garlic || emp_health)
	answer = "Almost certainly a vampire."

# If name is "Drake Cula" or "Tu Fang", the result is "Definitely a vampire".

elsif emp_name == false
	answer = "Definitely a vampire."
	
# Otherwise, the result is "Results inconclusive".

else
	answer = "Results inconclusive."
end

puts answer