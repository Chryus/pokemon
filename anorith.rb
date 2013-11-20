require 'awesome_print'

class Anorith


	type_effectiveness

	def initialize
		@name = "weedle"
		@leveling_rate = "Erratic"
		@level = rand(6) + 1
		@height = .3m
		@state = "unevolved"
		@weight = "7.1lbs"
		@egg_group = "Bug"
		@abilities = ["Battle_armor", "swift_swim"]
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
