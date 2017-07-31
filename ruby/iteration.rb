# Release 0

boys = ["Jack", "Joseph", "Thomas", "James", "Sam"]
girls = ["Catherine", "Rachel", "Alison"]
total_kids = boys + girls

puts "Before defining kid_counter:"
p boys
p girls
p total_kids

def kid_counter
	boys = ["Jack", "Joseph", "Thomas", "James", "Sam"]
	girls = ["Catherine", "Rachel", "Alison"]
	total_kids = boys + girls
	kid_counter = puts "The kids in the group are named #{total_kids}."
	yield(boys, girls)
end

puts "After defining kid_counter:"
p boys
p girls
p total_kids

kid_counter { |boys, girls| puts "The boys in the group are named #{boys}, while the girls of the group are named #{girls}." }



###########################################

# Release 1

weapons = ["NEWBOW", "OLDBOW", "LONGBOW", "YEWBOW", "CROSSBOW"]
organized_weapons = []
ammo = { quiver_1: "extra large", quiver_2: "large", quiver_3: "medium", quiver_4: "small", quiver_5: "extra small" }

puts "Original array and hash data:"
p weapons
p organized_weapons
p ammo

weapons.each do |bow|
	organized_weapons << bow.downcase
end

puts "After array's .each call:"
p weapons
p organized_weapons
p ammo

organized_weapons.map! do |bow|
	puts bow
	bow.capitalize
end

puts "After array's .map! call:"
p weapons
p organized_weapons
p ammo

ammo.each do |carrier, size|
	puts "#{carrier} can hold a(n) #{size} amount of arrows or bolts."
end

puts "After hash's .each call:"
p weapons
p organized_weapons
p ammo



###############################################

# Release 2

array_numbers = [7, 8, 9, 10, 11]
task_one_array = []
task_two_array = []
task_three_array = []
task_four_array = []
hash_numbers = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5 }
task_one_hash = []
task_two_hash = []
task_three_hash = []
task_four_hash = []

puts "Original data before the array/hash methods:"
p array_numbers
p hash_numbers

# Task 1: Create a method that iterates through items and deletes
# any of them that meet a certain condition.

array_numbers.each do |digits|
	task_one_array << digits
	task_one_array.reject { |digits| digits < 8 }
end

puts "After task one's array call:"
p array_numbers
p task_one_array

hash_numbers.each do |text, number|
	task_one_hash.delete_if {|text, number| text >= "d" }
end

puts "After task one's hash call."
p hash_numbers
p task_one_hash

# Task 2: Create a method that filters a data structure for only
# items that do satisfy a certain condition.

array_numbers.each do |digits|
	task_two_array << digits
	task_two_array.select { |digits| digits > 9 }
end

puts "After task two's array call:"
p array_numbers
p task_two_array

hash_numbers.each do |text, number|
	task_two_hash.reject {|text, number| number < 2 }
end

puts "After task two's hash call:"
p hash_numbers
p task_two_hash

# Task 3: Create a different method that filters a data structure
# for only items satisfying a certain condition.

task_three_array = array_numbers.map do |digits|
	task_three_array.keep_if { |digits| digits < 11 }
end

puts "After task three's array call:"
p array_numbers
p task_three_array

hash_numbers.each do |text, number|
	task_three_hash.keep_if {|text, number| number > 3 }
end

puts "After task three's hash call:"
p hash_numbers
p task_three_hash

# Task 4: Create a method that will remove items from a data
# structure until the condition in the block evaluates to false,
# then stops.

array_numbers.each do |digits|
	task_four_array.drop_while {|digits| digits < 10 }
end

puts "After task four's hash call:"
p array_numbers
p task_four_array

hash_numbers.each do |text, number|
	task_four_hash.any? { |text, number| number.length >= 1 }
end

puts "After task four's hash call:"
p hash_numbers
p task_four_hash