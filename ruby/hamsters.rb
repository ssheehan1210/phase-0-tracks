# Tracking Data for Hamsters

# Start with the hamster's name.

puts "Hamster's Name: "
  nam = gets.chomp

# Then the hamster's volume level.

puts "Hamster's Volume Level: "
  vol = "#{gets.chomp}".to_i
  
# Then the fur color.

puts "Hamster's Fur Color: "
  fur = gets.chomp
  
# Then whether the hamster is a good candidate for adoption.

puts "Is It Good Or Bad for Adoption?"
  adop = gets.chomp
  
# Finally, add in the hamster's age. If the user leaves this blank, add nil to the estimated age.

puts "Hamster's Age: "
  age = "#{gets.chomp}".to_i

if age = ""
  age = nil
end
