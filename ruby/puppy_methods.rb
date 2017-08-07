class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(repeat)
  	repeat.times do
  		puts "Woof!"
  	end
  	repeat
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(man_years)
  	if man_years == 0
  		print 0
  	elsif man_years == 1
  		# As a general guideline, a medium-sized dog's first year is
  		# equal to about 15 human years.
  		print 15
  	elsif man_years == 2
  		# The dog's second year equals to about 9 human years.
  		print 24
  	elsif man_years > 2
  		# Each year after the second is approximately equal to 5
  		# human years.
  		print 24 + (5 * (man_years - 2))
  	else
  		puts "#{man_years} is not an applicable age."
  	end
  	man_years
  end

  def hug
  	puts "*licks your face*"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

# Driver Code:
roger = Puppy.new
roger.fetch("stick")
roger.speak(5)
roger.roll_over
roger.dog_years(4)
roger.hug



class Kitten

	def call_over
		puts "*walks up to you*"
	end

	def rub(num)
		num.times do
			puts "Purrrr..."
		end
		num
	end

	def play(item)
		puts "*beats the #{item} around with its paws*"
		item
	end

	def initialize
		puts "Initializing new kitten instance ..."
	end

end

# Driver Code:
snowy = Kitten.new
snowy.call_over
snowy.rub(6)
snowy.play("ball of yarn")



# Use a loop to make 50 instances of the Kitten class.

# Modify loop so it stores all Kitten instances in a data structure.

# Iterate over that data structure using .each and call the instance
# methods you wrote on each instance.

kitten_data_structure = {}

inst = 1
numb = 50

until inst > 50 do
	kitten_data_structure.store(inst, Kitten.new)
	inst += 1
end

# Driver Code:
p kitten_data_structure

kitten_data_structure.each do |instance, cat|
	puts "Kitten No. #{instance} is listed as #{cat}."
	cat.call_over
	cat.rub(3)
	cat.play("ball of yarn")
end
