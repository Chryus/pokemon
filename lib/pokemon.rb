#class is like a database


class Pokemon

attr_accessor :name

	def initialize(name)
		 @name = name
	end

	def say_name
		"My name is #{@name}!"
	end


end

