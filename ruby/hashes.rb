# We will need to set up the program to allow the user to
# input the client's info, then have that info be sent into
# the hash and be stored as labeled data.

# First, input the client's name.

puts "What is the client's name?"
	cli_name = gets.chomp

# Then input the client's age.

puts "What is the client's age?"
	cli_age = gets.chomp

# Then input the number of children the client has.

puts "How many children does the client have?"
	cli_child = gets.chomp

# Then input the client's preferences in decor theme.

puts "What is the client's personal preferences towards the decor theme?"
	cli_decor = gets.chomp

# Once all of the client's info has been input, have the data
# be listed in a hash.

post = {
	name: cli_name,
	age: cli_age.to_i,
	children: cli_child.to_i,
	decor_theme: cli_decor
}

# Print the current version of the hash so it's visable to
# the user.

p post

# Ask if any key information needs to be changed and, if so,
# set up the prompt so that it selects the desired key.

# Then, ask for a new value for the designated key.

puts "Is there any information you wish to change? (client_name / client_age / client_children / client_decor / none)"
	key_update = gets.chomp

if key_update == "client_name"
	puts "What is the client's name?"
	updated_cli_name = gets.chomp
	post[:name] = updated_cli_name
elsif key_update == "client_age"
	puts "What is the client's age?"
	updated_cli_age = gets.chomp
	post[:age] = updated_cli_age.to_i
elsif key_update == "client_children"
	puts "How many children does the client have?"
	updated_cli_child = gets.chomp
	post[:children] = updated_cli_child.to_i
elsif key_update == "client_decor"
	puts "What is the client's personal preferences towards the decor theme?"
	updated_cli_decor = gets.chomp
	post[:decor_theme] = updated_cli_decor
else key_update = nil
end

# Print the final version of the hash and end the program.

p post