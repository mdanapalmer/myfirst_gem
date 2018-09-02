require 'pry'
class MyfirstGem::Stellar_object

	attr_accessor :name, :size_dist, :category, :descrip, :url

	def self.stellar_object1
		self.scrape_wiki
	end
		#Stellar_object::StellarScraper.new(https://en.wikipedia.org/wiki/Sun)
	def self.scrape_wiki	#return many stellar objects
		#go to wikipedia, find the stellar object
		objects = []
		objects << self.scrape_wikisun
		objects << self.scrape_wikiMerc
		binding.pry
		
		#stellar_object1 = self.new
		#stellar_object1.name = "Sun"
		#stellar_object1.size_dist = "1.41×1018 km"
		#stellar_object1.category = "G-type main-sequence star (G2V)"
		#stellar_object1.url = "https://en.wikipedia.org/wiki/Sun"
		#stellar_object1.descrip = "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth."
		#[stellar_object1]
		objects
	end

	def self.scrape_wikisun
		doc = Nokogiri::HTML(open(https://en.wikipedia.org/wiki/Sun))
		name = doc.search(caption).text
		size = doc.search(".nowrap").text
		#dist = 
		#category = 
		#url = 
		#descrip = 
	end
end


