# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Angel.destroy_all
Layover.destroy_all



 abel = Angel.create( 
 name: "Abel", 
 age: 33, 
 gender:"male", 
 airport: ["LAX", "BUR"], 
 zodiac:"leo", 
 languages: ["English","Spanish", "Portugues"], 
 years: "13", 
 bio: "I love to travel and I know what is like to be in a new city",
 top3_localspots: ["DTLA", "Venice", "Santa Monica"], 
 top3_historicalfigs: ["Fidel Castro", "Malcolm X", "Your Mom"]
 )

 will = Angel.create( 
 name: "Will", 
 age: 29, 
 gender:"male", 
 airport: ["ONT", "SNA"], 
 zodiac:"libra", 
 languages: "English", 
 years: "13", 
 bio: "I helped the CEO create this database, great guy!",
 top3_localspots: ["DTLA", "DTF", "DTLB"], 
 top3_historicalfigs: ["Manny Pacquiao", "Genghis Khan", "Albert Einstein"]
 )

 vin = Angel.create( 
 name: "Vin Diesel", 
 age: 40, 
 gender:"male", 
 airport: ["ONT", "BUR"], 
 zodiac:"scorpio", 
 languages: ["English", "French"], 
 years: "10", 
 bio: "I live my life a quarter mile at a time. RIP Paul Walker",
 top3_localspots: ["Santa Barbara", "Las Vegas", "Dominican Republic"], 
 top3_historicalfigs: ["Paul Walker", "Bill Clinton", "Marion Cotillard"]
 )

 ryan = Angel.create( 
 name: "Ryan Gosling", 
 age: 28, 
 gender:"male", 
 airport: "LAX", 
 zodiac:"pisces", 
 languages: ["English", "German"], 
 years: "7", 
 bio: "I am a sensitive guy who enjoys long walks along the LA river",
 top3_localspots: ["LA River", "Pomona Speedway", "Hollywood"], 
 top3_historicalfigs: ["Abraham Lincoln", "Hellen Keller", "Charlie Chaplin"]
 )

 tara = Angel.create( 
 name: "Tara Milch", 
 age: 28, 
 gender:"female", 
 airport: ["LAX","BUR"], 
 zodiac:"libra", 
 languages: ["English", "Spanish"], 
 years: "28", 
 bio: "Milky Tea",
 top3_localspots: ["Griffith Park", "Pehr Space", "Green Leafs Restaurant"], 
 top3_historicalfigs: ["Kurt Vonnegut", "Winsor McCay", "Dziga Vertov"]
 )












# binding.pry
