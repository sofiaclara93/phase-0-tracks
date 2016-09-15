# Virus Predictor

# I worked on this challenge [by myself, with: Fernando].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative gets the information from the file mentioned that is relative to the
# code in the file 
# require makes the path to the other file, it is useful to pull in ruby modules and other things not avaialbe 
# CONSTANT variable (STATE_DATA) is a variable that remains constant for the remainder of the program

require_relative 'state_data'

class VirusPredictor

  # initialize at the beginning of an instance with the attributes 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls on the other two methods 
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Takes the pop density to determine the number of deaths in the state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
        death_rate = 0.4
    elsif @population_density >= 150
      death_rate = 0.3
    elsif @population_density >= 100
      death_rate = 0.2
    elsif @population_density >= 50
      death_rate = 0.1
    else
      death_rate = 0.05
    end
    
    number_of_deaths = (@population * death_rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Based on pop density, determines how fast the virus will spread in the state
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  name_state = VirusPredictor.new(state, data[:population_density], data[:population]) 
  name_state.virus_effects
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