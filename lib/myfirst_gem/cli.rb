#CLI controller (responsible for business logic or user interactions, welcoming the user, dealing with input)
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
		@stellar_object1 = MyfirstGem::Stellar_object.stellar_object1
		@stellar_object1.each.with_index(1) do |object, i|
		puts "#{i}: #{object} - #{object.size_dist}: #{object.category}: #{object.descrip}."
	end
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
	#case input
		if input.to_i > 0
		the_object = @stellar_object1[input.to_i - 1]
		puts "#{the_object}: - #{the_object.object.size_dist}"
		elsif input == "list"
		menu
	#when "1"
	#puts "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth."
	#when "2"
	#puts "Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods."
	#when "3"
	#puts "Venus is the second planet from the Sun, orbiting it every 224.7 Earth days. It has the longest rotation period (243 days) of any planet in the Solar System and rotates in the opposite direction to most other planets (meaning the Sun would rise in the west and set in the east). It does not have any natural satellites. It is named after the Roman goddess of love and beauty."
	#when "4"
	#puts "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times."
	#when "5"
	#puts "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the Red Planet because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth."
	#when "6"
	#puts "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a giant planet with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter and Saturn are gas giants; the other two giant planets, Uranus and Neptune, are ice giants. Jupiter has been known to astronomers since antiquity. The Romans named it after their god Jupiter."
	#when "7"
	#puts "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth. It has only one-eighth the average density of Earth, but with its larger volume Saturn is over 95 times more massive. Saturn is named after the Roman god of agriculture; its astronomical symbol (♄) represents the god's sickle."
	#when "8"
	#puts "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have different bulk chemical composition from that of the larger gas giants Jupiter and Saturn. For this reason, scientists often classify Uranus and Neptune as ice giants to distinguish them from the gas giants. Uranus is the coldest planetary atmosphere in the Solar System, with a minimum temperature of 49 K (−224 °C; −371 °F), and has a complex, layered cloud structure with water thought to make up the lowest clouds and methane the uppermost layer of clouds. The interior of Uranus is mainly composed of ices and rock."
	#when "9"
	#puts "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus, which is 15 times the mass of Earth and slightly larger than Neptune.[d] Neptune orbits the Sun once every 164.8 years at an average distance of 30.1 AU (4.5 billion km). It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident."
	#when "10"
	#puts "Pluto is the largest and second-most-massive known dwarf planet in the Solar System, and the ninth-largest and tenth-most-massive known object directly orbiting the Sun. It is the largest known trans-Neptunian object by volume but is less massive than Eris. Like other Kuiper belt objects, Pluto is primarily made of ice and rock and is relatively small—about one-sixth the mass of the Moon and one-third its volume. It has a moderately eccentric and inclined orbit during which it ranges from 30 to 49 astronomical units or AU (4.4–7.4 billion km) from the Sun."
		back
		elsif input == "exit"
		goodbye
		else
		puts "Sorry, I didn't understand that entry.  Choose 1 - 10 or exit"
		end
	end
end


def goodbye
	puts "See you later, space cowboy!"
end

def back
	puts "Choose 1 - 10"
end

end