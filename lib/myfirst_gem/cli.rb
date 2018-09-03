#CLI controller (responsible for business logic or user interactions, welcoming the user, dealing with input)
require 'pry'
require 'nokogiri'
require 'open-uri'

class MyfirstGem::CLI

	def call
		puts "Hello, Stargazer!  Which stellar object would you like to learn about today?"
		list_info
		menu
		list
	end

	def list_info 
		puts <<-DOC "Enter 1 - 10 to choose your object, back to see the selection, or exit."
		DOC
	end

	def menu
	puts "\t1: Sun
	2: Mercury
	3: Venus
	4: Earth
	5: Mars
	6: Jupiter
	7: Saturn
	8: Uranus
	9: Neptune
	10: Pluto"
	end

	def list
	input = nil 
	while input != "exit"
	input = gets.strip
	case input
	when "exit"
		goodbye
	when "back"
		back
	when "1"
		puts scrape_sun
	when "2"
		puts scrape_merc
	when "3"
		puts scrape_ven
	when "4"
		puts scrape_earth
	when "5"
		puts scrape_mars
	when "6"
		puts scrape_jupi
	when "7"
		puts scrape_satu
	when "8"
		puts scrape_uran
	when "9"
		puts scrape_nept
	when "10"
		puts scrape_pluto
	else
		puts "I'm sorry, I didn't understand that request. Please type back to view menu, 1 - 10 to choose object, or exit."
		end
	end
end


def goodbye
	puts "See you later, space cowboy!"
end

def back
	puts "Choose 1 - 10"
	menu
end

def scrape_sun
doc = nil 
doc = Nokogiri::HTML(open("https://www.space.com/58-the-sun-formation-facts-and-characteristics.html"))   
puts doc.css(".article-content").text
end

def scrape_merc
doc = nil 
doc = Nokogiri::HTML(open("https://www.space.com/36-mercury-the-suns-closest-planetary-neighbor.html"))   
puts doc.css(".article-content").text
end

def scrape_ven
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/44-venus-second-planet-from-the-sun-brightest-planet-in-solar-system.html"))
	puts doc.css(".article-content").text
end

def scrape_earth
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/54-earth-history-composition-and-atmosphere.html"))
	puts doc.css(".article-content").text
end

def scrape_mars
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/47-mars-the-red-planet-fourth-planet-from-the-sun.html"))
	puts doc.css(".article-content").text
end

def scrape_jupi
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/7-jupiter-largest-planet-solar-system.html"))
	puts doc.css(".article-content").text
end

def scrape_satu
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/48-saturn-the-solar-systems-major-ring-bearer.html"))
	puts doc.css(".article-content").text
end

def scrape_uran
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/45-uranus-seventh-planet-in-earths-solar-system-was-first-discovered-planet.html"))
	puts doc.css(".article-content").text
end

def scrape_nept
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/41-neptune-the-other-blue-planet-in-our-solar-system.html"))
	puts doc.css(".article-content").text
end

def scrape_pluto
	doc = nil
	doc = Nokogiri::HTML(open("https://www.space.com/43-pluto-the-ninth-planet-that-was-a-dwarf.html"))
	puts doc.css(".article-content").text
end

end