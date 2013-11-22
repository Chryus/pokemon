 
#we use the scraper to get our data and store it in our pokemon objects

require './lib/scraper.rb'
require './lib/pokemon.rb'


#here we are setting local variables

pokemon_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
name = pokemon_scraper.get_name


#here we have the number of students that we are 
#iterating over to instantiate all of them
pokemons = []
pokemons << Pokemon.new(name)
pokemons.each do |pokemon|
	puts pokemon.name
end

