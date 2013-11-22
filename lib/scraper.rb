#LEZ build a scraper!
#we're gonna make a class for a scraper, becaus we have some data and some behavior
#every time we give create a scraper we need an address 
#these are gems to help retrieve data from URL
require 'open-uri' #open the file on the internet
require 'nokogiri' #

class Scraper
attr_reader :html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

 	def get_name
 		array1 = []
 		array2 = []
 		array3 = []
 		array4 = []
		data_drill = html.search("tr td i")
			#iterate over array
		data_drill.each do |noko_obj|
			#convert nokogiri objects to strings
			noko_obj = noko_obj.to_s
			array1 << noko_obj
		end
		array1.each do |string|
			new_string = string.gsub("<i>", "   ").gsub("</i>", "    ")
			array2 << new_string
		end
		array2.each do |word|
				weedle = word["Weedle"]
				array3 << weedle
			end
		array4 = array3.to_s
		name = array4[42..47]
		name
	end

		#.text.split(" ")
			# twitter_handle.each do |element|
			# 	if element[0] == "@"
			# 		new_array << element
			# 	end
			# end
end

 


#we are moving these to app for separation of responsibilities
my_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Weedle_(Pok%C3%A9mon)")
#puts my_scraper.html
puts my_scraper.get_name
#puts my_scraper.get_twitter
#puts my_scraper.get_blogs

#we call "nokogiri" is a class, "HTML" class method is inside, we pass download to HTML method
#HTML is a method that makes the file #<File:0x007fcb04057dd8> pretty and usable in ruby
# class::class_method
# class::constant
#we store the return value of the method open in the var download
#we keep it local because we're going to use it to create html instance var
#.search is a nokogiri method


