require 'awesome_print'

class Anorith

#Fill this with magic tomorrow
	type_effectiveness = {
		{:Damaged_normally_by => []}
		{:Weak_to => []}
		{:Immune_to => []}
		{:Resistant_to => []}
	}

	def initialize(name)
		@type = ["Rock", "Bug"]
		@catch_rate = "45 (5.9%)"
		@entry = "Anorith, the Old Shrimp Pokémon. Anorith once inhabited old seas, and is believed to have used its two well developed hooves to capture prey."
		@hp = 45
		@exp = 119
		@name = name
		@level = level_set
		@leveling_rate = "Erratic"
		@height = "0.7m"
		@state = "unevolved"
		@weight = "27.6 1lbs"
		@egg_group = "Water 3"
		@abilities = ["Battle Armor", "Swift Swim"]
	end

	def level_set
		rand(6) + 1
	end

	def level_up
    if exp > level**3
      level += 1
    end
  end

  def gain_exp new_exp
    exp += new_exp
  end

  def say_name
    "Anorith!"
  end

end

anorith1 = Anorith.new
ap anorith1.run_away
ap anorith1.evolve(7)
ap anorith1.level


