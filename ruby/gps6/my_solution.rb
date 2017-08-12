# Virus Predictor

# I worked on this challenge [with: Yamini S., Sam Sheehan].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# lists a relative path, includes it in the document if its accessible
# separate from 'require', in which you refer to an absolute path
# if not found, then it will try to access from $LOAD_PATH
require_relative 'state_data'

module Statistics
  # takes in three variables, output stored in number of deaths
  # prints separate string with results
  def predicted_deaths
    hash_new = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1, 0 => 0.05}
    number_of_deaths = 0
    hash_new.each do |i,j|
      if @population_density >= i
        number_of_deaths = (@population * j).floor
        break
      end
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # takes in two variables, output stored in speed
  # prints separate string with results
  def speed_of_spread
    hash_new = {200 => 0.5, 150 => 1.0, 100 => 1.5, 50 => 2.0, 0 => 2.5}
    speed = 0.0
    hash_new.each do |i,j|
      if @population_density >= i
        speed = j
        break
      end
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

class VirusPredictor
  include Statistics
  # initializes each instance, takes in three variables
  # assigns three instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # first method takes in three instance variables
  # second method takes in two instance variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # private

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state,population|
  current_state = VirusPredictor.new(state, population[:population_density], population[:population])
  current_state.virus_effects
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
