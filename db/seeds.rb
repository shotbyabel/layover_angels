# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Angel.destroy_all
Layover.destroy_all
User.destroy_all

abel = Angel.create( 
  name:      "Abel", 
  age:       33, 
  gender:    "male", 
  airport:   ["LAX", "BUR"], 
  zodiac:    "leo", 
  languages: ["English","Spanish", "Portugues"], 
  years:     "13", 
  bio:       "I love to travel and I know what is like to be in a new city",
  top3_localspots:     ["DTLA", "Venice", "Santa Monica"], 
  top3_travels:        ["Indonesia", "Brazil", "Baltics"],
  top3_historicalfigs: ["Fidel Castro", "Malcolm X", "Your Mom"],
  photo_uri: "http://www.konbini.com/wp-content/blogs.dir/4/files/2014/10/images-cms-image-001400411.jpg" 
)

will = Angel.create( 
  name:     "Will", 
  age:       29, 
  gender:    "male", 
  airport:   ["ONT", "SNA"], 
  zodiac:    "libra", 
  languages: "English", 
  years:     "13", 
  bio:       "I helped the CEO create this database, great guy!",
  top3_localspots:     ["DTLA", "DTF", "DTLB"], 
  top3_travels:        ["Santa Barbara", "Las Vegas", "Dominican Republic"],
  top3_historicalfigs: ["Manny Pacquiao", "Genghis Khan", "Albert Einstein"],
  photo_uri: ""
)

vin = Angel.create( 
  name:      "Vin Diesel", 
  age:       40, 
  gender:    "male", 
  airport:   ["ONT", "BUR"], 
  zodiac:    "scorpio", 
  languages: ["English", "French"], 
  years:     "10", 
  bio:       "I live my life a quarter mile at a time. RIP Paul Walker",
  top3_localspots:     ["Santa Barbara", "Las Vegas", "Dominican Republic"], 
  top3_travels:        ["Grand Canyon", "Rome", "Chicago"],
  top3_historicalfigs: ["Paul Walker", "Bill Clinton", "Marion Cotillard"],
  photo_uri: ""
)

ryan = Angel.create( 
  name:      "Ryan Gosling", 
  age:       28, 
  gender:    "male", 
  airport:   "LAX", 
  zodiac:    "pisces", 
  languages: ["English", "German"], 
  years:     "7", 
  bio:       "I am a sensitive guy who enjoys long walks along the LA river",
  top3_localspots:     ["LA River", "Pomona Speedway", "Hollywood"], 
  top3_travels:        ["Phillippines", "Taiwan", "Denver"],
  top3_historicalfigs: ["Abraham Lincoln", "Hellen Keller", "Charlie Chaplin"],
  photo_uri: ""
)

tara = Angel.create( 
  name:      "Tara Milch", 
  age:       28, 
  gender:    "female", 
  airport:   ["LAX","BUR"], 
  zodiac:    "libra", 
  languages: ["English", "Spanish"], 
  years:     "28", 
  bio:       "Milky Tea",
  top3_localspots:     ["Griffith Park", "Pehr Space", "Green Leafs Restaurant"], 
  top3_travels:        ["Ibiza", "Reno", "New York"],
  top3_historicalfigs: ["Kurt Vonnegut", "Winsor McCay", "Dziga Vertov"],
  photo_uri: ""
)

User.new(
  name:      "Phil",
  last_name: "Hughes",
  email:     "pj@ga.co",
  password:  "123",
  password_confirmation: "123",
  photo:     "http://how-rich.org/wp-content/uploads/2015/05/Taran-Killam.jpg",
  bio:       "I was born in a fiery blaze o tthe edge night, and raised with anger in my heart. Rock n Roll!"
).save

