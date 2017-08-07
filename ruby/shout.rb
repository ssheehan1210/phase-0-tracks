#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#
#	def self.yelling_happily(screams)
#		screams + "!" + " XD"
#	end
#end

#p Shout.yell_angrily("I am shouting")
#p Shout.yelling_happily("I am so happy")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(screams)
		screams + "!" + " XD"
	end
end

class Coach
	include Shout
end

class Bouncer
	include Shout
end

swimming_coach = Coach.new
p swimming_coach.yell_angrily("I can't believe you're late for practice")
p swimming_coach.yelling_happily("Great work out there, team")

nightclub_bouncer = Bouncer.new
p nightclub_bouncer.yell_angrily("Get outta here")
p nightclub_bouncer.yelling_happily("Come on in")

