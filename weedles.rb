require 'awesome_print'

class Weedle

  base_stats = {  "HP" => 40,
                "Attack" => 35,
                "Defense" => 30,
                "Sp.Atk" => 20,
                "Sp.Def" => 20,
                "Speed" => 50,
                 }

	attr_accessor :name
	attr_reader :level

	def initialize
		@level = level_set
		@height = ".3m"
		@state = "unevolved"
		@weight = "7.1lbs"
		@egg_group = "Bug"
		@abilities = ["shield dust", "run_away"]
	end

	def run_away
		puts "Eeeeeeeeee. leave me alone. I'm a Weedle! I have a family!!!!"
	end

	def level_set
		rand(6) + 1
	end


	def evolve(level)
		if level > 6
			@state = "First evolution"
			puts "Yippeee! I'm a Kakuna!"
		elsif level > 9
			@state = "Second evolution"
			puts "Watch out! I'll sting you! I'm a Beedrill"
		end
	end

end

weedle1 = Weedle.new
ap weedle1.run_away
ap weedle1.evolve(7)
ap weedle1.level



	