require 'awesome_print'

class Dwebble

	def initialize(name)
		@type = ["Bug", "Rock"] 
		@catch_rate = "190 (24.8%)"
		@entry = "Dwebble, the Rock Inn Pokémon. After finding a suitable rock, Dwebble digs a hole in the rock's bottom, to use as a protective shell. Dwebble can make rock easier to carve by producing a liquid from its mouth."
		@hp = 50
		@exp = 65
		@name = name
		@leveling_rate = "Medium Fast"
		@level = rand(6) + 1
		@height = "0.3m"
		@state = "unevolved"
		@weight = "32 lbs."
		@egg_group = ["Bug", "Mineral"]
		@abilities = ["Battle_armor", "swift_swim"]
	end

	def level_set
		rand(34) + 1
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
    "Dwebble!"
  end

end
