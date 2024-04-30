# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



user1 = User.create!(
  email:    'bob@email.com',
  password: 'password'
)

user2 = User.create!(
  email:    'alice@email.com',
  password: 'password'
)



cat1 = Category.create!(name: "Plush")
cat2 = Category.create!(name: "Lego")
cat3 = Category.create!(name: "DVD")
cat4 = Category.create!(name: "Poster")
cat5 = Category.create!(name: "Funko")
cat6 = Category.create!(name: "Clothing")
cat7 = Category.create!(name: "Other")
cat8 = Category.create!(name: "Figure")


item1 = Item.create!(
  name: "Yoda Plushie",
  price: 19.99,
  location: "Memphis, TN",
  description: "Official Licensed Star Wars Yoda Plush Toy - Good Condition - Small - Fun for all ages",
  category: cat1
)

item1.image.attach(
  io: File.open(Rails.root.join('db/seed-images/yoda-plushie.jpg')),
  filename: 'yoda-plushie.jpg',
  content_type: 'image/jpg',
  identify: false
)

item2 = Item.create!(
  name: "Darth Vadar Funko Pop",
  price: 15.99,
  location: "New York City, NY",
  description: "Following the Clone Wars, hope survives hidden from the Empire. Restore the balance in your Star Wars™ collection with the help of Pop! Darth Vader from the Obi-Wan Kenobi series. Vinyl bobblehead is approximately 5-inches tall. Box not included.",
  category: cat5
)

item2.image.attach(
  io: File.open(Rails.root.join('db/seed-images/vadar-funko.png')),
  filename: 'vadar-funko.png',
  content_type: 'image/png',
  identify: false
)

item3 = Item.create!(
  name: "The Force Awakens Poster",
  price: 29.99,
  location: "Nashville, TN",
  description: "Star Wars: Episode VII - The Force Awakens One Sheet Original Poster - Size: 27x40. Original movie poster for Star Wars: The Force Awakens (2017)",
  category: cat4
)

item3.image.attach(
  io: File.open(Rails.root.join('db/seed-images/force-awakens-poster.jpg')),
  filename: 'force-awakens-poster.jpg',
  content_type: 'image/jpg',
  identify: false
)

item4 = Item.create!(
  name: "The Last Jedi Poster",
  price: 29.99,
  location: "Orlando, FL",
  description: "Star Wars: Episode VIII - The Last Jedi One Sheet Original Poster - Size: 27x40. Original movie poster for Star Wars: The Last Jedi (2019)",
  category: cat4
)

item4.image.attach(
  io: File.open(Rails.root.join('db/seed-images/last-jedi-poster.jpg')),
  filename: 'last-jedi-poster.jpg',
  content_type: 'image/jpg',
  identify: false
)

item5 = Item.create!(
  name: "A New Hope Poster",
  price: 29.99,
  location: "Portland, OR",
  description: "Star Wars: Episode IV - A New Hope One Sheet Original Poster - Size: 27x40. Original movie poster for Star Wars: A New Hope (1977)",
  category: cat4
)

item5.image.attach(
  io: File.open(Rails.root.join('db/seed-images/new-hope-poster.jpg')),
  filename: 'new-hope-poster.jpg',
  content_type: 'image/jpg',
  identify: false
)

item6 = Item.create!(
  name: "Revenge of the Sith Poster",
  price: 29.99,
  location: "San Antonio, TX",
  description: "Star Wars: Episode III - Revenge of the Sith One Sheet Original Poster - Size: 27x40. Original movie poster for Star Wars: Revenge of the Sith (2005)",
  category: cat4
)

item6.image.attach(
  io: File.open(Rails.root.join('db/seed-images/revenge-sith-poster.jpg')),
  filename: 'revenge-sith-poster.jpg',
  content_type: 'image/jpg',
  identify: false
)

item7 = Item.create!(
  name: "AT-AT Walker Lego Set",
  price: 849.99,
  location: "Miami, FL",
  description: "The AT-AT measures over 24.5 in. (62 cm) high and is easily opened to view the detailed interior. The main body has space for 40 LEGO minifigures (General Veers and Luke Skywalker are among 9 in this set), 4 speeder bikes (2 included) and the included E-Web heavy repeating blaster. The head/cockpit seats 2 LEGO minifigures and has space for 1 more. An information plaque completes a magnificent display piece.",
  category: cat2
)
item7.image.attach(
  io: File.open(Rails.root.join('db/seed-images/atat-lego.jpg')),
  filename: 'atat-lego.jpg',
  content_type: 'image/jpg',
  identify: false
)

item8 = Item.create!(
  name: "Attack of the Clones Blu Ray DVD",
  price: 15.99,
  location: "Sacramento, CA",
  description: "The STAR WARS saga continues on DVD with Episode II Attack of the Clones. Anakin Skywalker has grown into an accomplished Jedi apprentice, and he faces his most difficult challenge yet as he must choose between his Jedi duty and forbidden love. Relive the adventure the way it was meant to be seen in spectacular digital clarity, including the climactic Clone War battle and Jedi Master Yoda in the ultimate lightsaber duel. Experience this 2-disc set that features over six hours of bonus materials, and see how Episode II unlocks the secrets of the entire STAR WARS saga.",
  category: cat3
)
item8.image.attach(
  io: File.open(Rails.root.join('db/seed-images/attack-clones-dvd.jpg')),
  filename: 'attack-clones-dvd.jpg',
  content_type: 'image/jpg',
  identify: false
)

item9 = Item.create!(
  name: "Bobe Fett Action Figure",
  price: 12.99,
  location: "Chicago, IL",
  description: "The 6-inch-scale Black Series figure is carefully detailed to look like the character from The Book of Boba Fett live-action TV series, featuring premium detail and multiple points of articulation.",
  category: cat8
)
item9.image.attach(
  io: File.open(Rails.root.join('db/seed-images/boba-figure.jpg')),
  filename: 'boba-figure.jpg',
  content_type: 'image/jpg',
  identify: false
)

item10 = Item.create!(
  name: "C3PO Tape Dispenser",
  price: 1149.99,
  location: "Boston, MA",
  description: "Vintage 1980s C-3PO Tape Dispenser. Very rare collectible item that any collector would want to add to their collection.",
  category: cat7
)
item10.image.attach(
  io: File.open(Rails.root.join('db/seed-images/c3po-tape.jpg')),
  filename: 'c3po-tape',
  content_type: 'image/jpg',
  identify: false
)

item11 = Item.create!(
  name: "Chewbaca Plush Toy",
  price: 12.99,
  location: "Toronto, CAN",
  description: "Official Licensed Star Wars Chewbaca Plush Toy - Good Condition - Small - Fun for all ages",
  category: cat1
)
item11.image.attach(
  io: File.open(Rails.root.join('db/seed-images/chewbaca-plush.jpg')),
  filename: 'chewbaca-plush.jpg',
  content_type: 'image/jpg',
  identify: false
)

item12 = Item.create!(
  name: "Empire Strikes Back Blue Ray DVD",
  price: 15.99,
  location: "Houston, TX",
  description: "iscover the conflict between good and evil in the electrifying Star Wars: Episode V - The Empire Strikes Back. After the destruction of the Death Star, Imperial forces continue to pursue the Rebels. After the Rebellion's defeat on the ice planet Hoth, Luke journeys to the planet Dagobah to train with Jedi Master Yoda, who has lived in hiding since the fall of the Republic. In an attempt to convert Luke to the dark side, Darth Vader lures young Skywalker into a trap in the Cloud City of Bespin.",
  category: cat3
)
item12.image.attach(
  io: File.open(Rails.root.join('db/seed-images/empire-strikes-back-dvd.jpg')),
  filename: 'empire-strikes-back-dvd.jpg',
  content_type: 'image/jpg',
  identify: false
)

item13 = Item.create!(
  name: "Millenium Falcon Lego Set",
  price: 849.99,
  location: "Atlanta, GA",
  description: "Welcome to the largest, most detailed LEGO® Star Wars Millennium Falcon model we’ve ever created—in fact, with 7,500 pieces it’s one of our biggest LEGO models, period! This amazing LEGO interpretation of Han Solo’s unforgettable Corellian freighter has all the details that Star Wars fans of any age could wish for, including intricate exterior detailing, upper and lower quad laser cannons, landing legs, lowering boarding ramp and a 4-minifigure cockpit with detachable canopy.",
  category: cat2
)
item13.image.attach(
  io: File.open(Rails.root.join('db/seed-images/falcon-lego.jpg')),
  filename: 'falcon-lego.jpg',
  content_type: 'image/jpg',
  identify: false
)

item14 = Item.create!(
  name: "A New Hope Blu Ray DVD",
  price: 15.99,
  location: "Dallas, TX",
  description: "Luke Skywalker begins a journey that will change the galaxy in STAR WARS: EPISODE IV - A NEW HOPE. Nineteen years after the formation of the Empire, Luke is thrust into the struggle of the Rebel Alliance when he meets Obi-Wan Kenobi, who has lived for years in seclusion on the desert planet of Tatooine. Obi-Wan begins Luke's Jedi training as Luke joins him on a daring mission to rescue the beautiful Rebel leader Princess Leia from the clutches of Darth Vader and the evil Empire.",
  category: cat3
)
item14.image.attach(
  io: File.open(Rails.root.join('db/seed-images/new-hope-dvd.jpg')),
  filename: 'new-hope-dvd.jpg',
  content_type: 'image/jpg',
  identify: false
)

item15 = Item.create!(
  name: "Golden Luke Skywalker Funko Pop",
  price: 7999.99,
  location: "Oklahoma City, OK",
  description: "This is the Golden Luke Skywalker (Final Battle) variant that was released as part of an event called Funko Freaky Tiki Fridays, which took place at SDCC 2019. The price tag isn't just inflated thanks to its beautiful gold sheen, but the fact that only 80 of these Pops were produced.",
  category: cat5
)
item15.image.attach(
  io: File.open(Rails.root.join('db/seed-images/gold-luke-funko.jpg')),
  filename: 'gold-luke-fuko.jpg',
  content_type: 'image/jpg',
  identify: false
)

item16 = Item.create!(
  name: "Grogu Plush",
  price: 9.99,
  location: "Phoenix, AZ",
  description: "Official Licensed Star Wars Grogu Plush Toy - Good Condition - Small - Fun for all ages",
  category: cat1
)
item16.image.attach(
  io: File.open(Rails.root.join('db/seed-images/grogu-plush.jpg')),
  filename: 'grogu-plush.jpg',
  content_type: 'image/jpg',
  identify: false
)

item17 = Item.create!(
  name: "Han Solo Funko Pop",
  price: 17.99,
  location: "Denver, CO",
  description: "From Solo, Han Solo, as a stylized POP vinyl from Funko! Figure stands 3 3/4 inches and comes in a window display box. Check out the other Solo figures from Funko! Collect them all!",
  category: cat5
)
item17.image.attach(
  io: File.open(Rails.root.join('db/seed-images/han-funko.jpg')),
  filename: 'han-funko.jpg',
  content_type: 'image/jpg',
  identify: false
)

item18 = Item.create!(
  name: "Han Solo Plush Toy",
  price: 13.99,
  location: "Charlotte, NC",
  description: "Official Licensed Star Wars Han Solo Plush Toy - Good Condition - Small - Fun for all ages",
  category: cat1
)
item18.image.attach(
  io: File.open(Rails.root.join('db/seed-images/han-plush.jpg')),
  filename: 'han-plush.jpg',
  content_type: 'image/jpg',
  identify: false
)

item19 = Item.create!(
  name: "Holographic Luke Skywalker Funko Pop",
  price: 24.99,
  location: "Cleaveland, OH",
  description: "Celebrate the 40th anniversary of Return of the Jedi! Limited-edition glow-in-the-dark Hologram Luke Skywalker Pop! Exclusive Pop! Vinyl figure based on the 1983 Star Wars film.",
  category: cat5
)
item19.image.attach(
  io: File.open(Rails.root.join('db/seed-images/holo-luke-funko.jpg')),
  filename: 'holo-luke-funko.jpg',
  content_type: 'image/jpg',
  identify: false
)

item20 = Item.create!(
  name: "Imperial Cruiser Lego Set",
  price: 208.99,
  location: "Vancouver, CAN",
  description: "Open up a galaxy of Star Wars: The Mandalorian Season 2 adventures for fans with this LEGO brick-built model of the Imperial Light Cruiser (75315). It features a bridge that doubles as a handle for flying, 2 rotating turrets with spring-loaded shooters, plus 2 mini TIE Fighters and a launcher. A hatch gives easy access to the cabin which has a hologram table and storage for the electro binoculars and other accessory elements.",
  category: cat2
)
item20.image.attach(
  io: File.open(Rails.root.join('db/seed-images/imperial-cruiser-lego.jpg')),
  filename: 'imperial-cruiser-lego.jpg',
  content_type: 'image/jpg',
  identify: false
)

item21 = Item.create!(
  name: "Luke Skywalker Action Figure",
  price: 11.99,
  location: "New Orleans, LA",
  description: "The 6-inch-scale Black Series figure is carefully detailed to look like the character from Star Wars movie series, featuring premium detail and multiple points of articulation.",
  category: cat8
)
item21.image.attach(
  io: File.open(Rails.root.join('db/seed-images/luke-figure.png')),
  filename: 'luke-figure.png',
  content_type: 'image/png',
  identify: false
)

item22 = Item.create!(
  name: "Mandalorian Action Figure",
  price: 22.99,
  location: "San Francisco, CA",
  description: "The 6-inch-scale Black Series figure is carefully detailed to look like the character from The Mandalorian live-action TV series, featuring premium detail and multiple points of articulation.",
  category: cat8
)
item22.image.attach(
  io: File.open(Rails.root.join('db/seed-images/mando-figure.jpg')),
  filename: 'mando-figure.jpg',
  content_type: 'image/jpg',
  identify: false
)

item23 = Item.create!(
  name: "Mandalorian Helmet",
  price: 199.99,
  location: "Detroit, MI",
  description: "No one is quite sure who this well-equipped stranger is. The Mandalorian is battle-worn and tight-lipped, a formidable bounty hunter in an increasingly dangerous galaxy.  ",
  category: cat7
)
item23.image.attach(
  io: File.open(Rails.root.join('db/seed-images/mando-mask.jpg')),
  filename: 'mando-mask.jpg',
  content_type: 'image/jpg',
  identify: false
)

item24 = Item.create!(
  name: "R2D2 RC Robot",
  price: 249.99,
  location: "St Louis, MO",
  description: "A loyal and dependable astromech droid well-equipped for starship repair and computer interface, even after decades of service, R2-D2 continues to be full of surprises. When the battle to take back the galaxy demands the precision and advanced technological capacities of a droid, there's no better astromech co-pilot than R2-D2. With the smart R2-D2 from Hasbro, Kids can imagine sending R2-D2 into the fray of epic intergalactic battles. With app-controlled movement in all directions, smart R2-D2 is a mobile droid, able to communicate and explore. Use the Hasbro Star Wars smart R2-D2 app to send smart R2-D2 on exciting missions and even program him to follow routes, just don't steer him into an asteroid field.",
  category: cat7
)
item24.image.attach(
  io: File.open(Rails.root.join('db/seed-images/r2d2-rc.jpg')),
  filename: 'r2d2-rc.jpg',
  content_type: 'image/jpg',
  identify: false
)

item25 = Item.create!(
  name: "Rogue One Blu Ray DVD",
  price: 15.99,
  location: "Washington D.C, USA",
  description: "From Lucasfilm comes the first of the Star Wars stand-alone films - Rogue One: A Star Wars Story, an epic adventure. In a time of conflict, a group of unlikely heroes band together on a mission to steal the plans to the Death Star, the Empire's ultimate weapon of destruction. This key event in the Star Wars timeline brings together ordinary people who choose to do extraordinary things, and in doing so, become part of something greater than themselves.",
  category: cat3
)
item25.image.attach(
  io: File.open(Rails.root.join('db/seed-images/rogue-one-dvd.jpg')),
  filename: 'rogue-one-dvd.jpg',
  content_type: 'image/jpg',
  identify: false
)

item26 = Item.create!(
  name: "Sandtrooper Action Figure",
  price: 14.99,
  location: "Salt Lake City, UT",
  description: "Imperial Sandtroopers fall prey to a Jedi mind trick that makes them ignore the two Droids they are searching for. Re-create the biggest battles and missions in the Star Wars epic with figures from The Black Series! This 6-inch figure is carefully detailed to look like the Sandtroopers that were looking for C-3PO and R2-D2. Your collection - and your adventures - won't be complete without him!",
  category: cat8
)
item26.image.attach(
  io: File.open(Rails.root.join('db/seed-images/sandtrooper-figure.jpg')),
  filename: 'sandtrooper-figure.jpg',
  content_type: 'image/jpg',
  identify: false
)

item27 = Item.create!(
  name: "Star Wars Shirt",
  price: 19.99,
  location: "Los Angeles, CA",
  description: "Stop looking for fashion help in Alderaan places! Add a little out-of-this-world style to your wardrobe. Transport yourself to a galaxy far, far away with a cool new Star Wars shirt featuring a black and white version of the iconic A New Hope movie poster!",
  category: cat6
)
item27.image.attach(
  io: File.open(Rails.root.join('db/seed-images/shirt1.jpg')),
  filename: 'shirt1.jpg',
  content_type: 'image/jpg',
  identify: false
)

item28 = Item.create!(
  name: "Star Destroyer Lego Set",
  price: 1499.99,
  location: "Philadelphia, PA",
  description: "Build and display an icon of the Galactic Empire – the Devastator. With over 4,700 LEGO® pieces, this Ultimate Collector Series 75252 Imperial Star Destroyer model captures all the authentic details of the starship as it appeared in the opening scene of Star Wars: A New Hope, including swiveling guns, a tilting radar dish, huge engine exhausts, intricate surface detailing and of course a buildable scale version of the Rebels' Tantive IV starship to chase down.",
  category: cat2
)
item28.image.attach(
  io: File.open(Rails.root.join('db/seed-images/star-destroyer-lego.jpg')),
  filename: 'star-destroyer-lego.jpg',
  content_type: 'image/jpg',
  identify: false
)

item29 = Item.create!(
  name: "Tatooine Shirt",
  price: 19.99,
  location: "Seattle, WA",
  description: "Stop looking for fashion help in Alderaan places! Add a little out-of-this-world style to your wardrobe. Transport yourself to a galaxy far, far away with a cool new Star Wars shirt featuring Luke Skywalker's home planet: Tatooine!",
  category: cat6
)
item29.image.attach(
  io: File.open(Rails.root.join('db/seed-images/tatooine-shirt.jpg')),
  filename: 'tatooine-shirt.jpg',
  content_type: 'image/jpg',
  identify: false
)

item30 = Item.create!(
  name: "Darth Vadar Shirt",
  price: 19.99,
  location: "Minneapolis, MN",
  description: "Stop looking for fashion help in Alderaan places! Add a little out-of-this-world style to your wardrobe. Transport yourself to a galaxy far, far away with a cool new Star Wars shirt featuring Darth Vader!",
  category: cat6
)
item30.image.attach(
  io: File.open(Rails.root.join('db/seed-images/vadar-shirt.jpg')),
  filename: 'vadar-shirt.jpg',
  content_type: 'image/jpg',
  identify: false
)

item31 = Item.create!(
  name: "Darth Vadar Shirt",
  price: 19.99,
  location: "Milwaukee, WI",
  description: "Star Wars inspired t-shirt featuring Darth Vader as Your Father inspired by The Godfather movie. Printed on Unisex Bella + Canvas tees in Black.",
  category: cat6
)

item31.image.attach(
  io: File.open(Rails.root.join('db/seed-images/vadar-shirt2.jpg')),
  filename: 'vadar-shirt2.jpg',
  content_type: 'image/jpg',
  identify: false
)

item32 = Item.create!(
  name: "Yoda Buddha Statue",
  price: 39.99,
  location: "Indianapolis, IN",
  description: "This Yoda-inspired Buddha statue represents both the Jedi wisdom of Yoda and the serene teachings of Buddha. The statue was created using a 3D printer and, as a result, has a unique structure. The statue's intricate details and carefully designed features make it a perfect gift or decoration piece for any Star Wars or Buddhism fan.",
  category: cat7
)
item32.image.attach(
  io: File.open(Rails.root.join('db/seed-images/yoda-buddha.jpg')),
  filename: 'yoda-buddha.jpg',
  content_type: 'image/jpg',
  identify: false

)

holo1 = Hologram.create!(
  actor: "Mark Hamill",
  price: 299.99,
  description: "Mark Hamill is best known for playing Luke Skywalker in the original trilogy and part of the sequel trilogy."
)

holo1.image.attach(
  io: File.open(Rails.root.join('db/seed-images/mark-hamill.jpg')),
  filename: 'mark-hamill.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo2 = Hologram.create!(
  actor: "Harrison Ford",
  price: 299.99,
  description: "Harrison Ford is best known for playing Han Solo in the original trilogy and part of the sequel trilogy."
)

holo2.image.attach(
  io: File.open(Rails.root.join('db/seed-images/harrison-ford.jpg')),
  filename: 'harrison-ford.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo3 = Hologram.create!(
  actor: "Carrie Fisher",
  price: 199.99,
  description: "Carrie Fisher is best known for playing Princess Leia in the original trilogy and the sequel trilogy."
)

holo3.image.attach(
  io: File.open(Rails.root.join('db/seed-images/carrie-fisher.jpg')),
  filename: 'carrie-fisher.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo4 = Hologram.create!(
  actor: "Chewbaca",
  price: 99.99,
  description: "Chewbaca is best known for playing Chewbaca in the original and sequel trilogies."
)

holo4.image.attach(
  io: File.open(Rails.root.join('db/seed-images/chewbaca.jpg')),
  filename: 'chewbaca.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo5 = Hologram.create!(
  actor: "Hayden Christensen",
  price: 149.99,
  description: "Hayden Christensen is best known for playing Anakin Skywalker in the prequel trilogy and Darth Vadar in the Obi Won Disney+ series."
)

holo5.image.attach(
  io: File.open(Rails.root.join('db/seed-images/hayden-christensen.jpg')),
  filename: 'hayden-christensen.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo6 = Hologram.create!(
  actor: "Ewan McGregor",
  price: 149.99,
  description: "Ewan McGregor is best known for playing Obi Won Kenobi in the prequel trilogy and the Obi Won Disney+ series."
)

holo6.image.attach(
  io: File.open(Rails.root.join('db/seed-images/ewan-mcgregor.jpg')),
  filename: 'ewwan-mcgregor.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo7 = Hologram.create!(
  actor: "Daisy Ridley",
  price: 99.99,
  description: "Daisy Ridley is best known for playing Rey in the sequel trilogy"
)

holo7.image.attach(
  io: File.open(Rails.root.join('db/seed-images/daisy-ridley.jpg')),
  filename: 'daisy-ridley.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo8 = Hologram.create!(
  actor: "Pedro Pascal",
  price: 199.99,
  description: "Pedro Pascal is best known for playing the Mandalorian in the Mandalorian Disney+ series."
)

holo8.image.attach(
  io: File.open(Rails.root.join('db/seed-images/pedro-pascal.jpg')),
  filename: 'pedro-pascal.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo9 = Hologram.create!(
  actor: "Natalie Portman",
  price: 174.99,
  description: "Natalie Portman played Padme Amidala in the prequel trilogy."
)

holo9.image.attach(
  io: File.open(Rails.root.join('db/seed-images/natalie-portman.jpg')),
  filename: 'natalie-portman.jpg',
  content_type: 'image/jpg',
  identify: false
)

holo10 = Hologram.create!(
  actor: "John Boyega",
  price: 149.99,
  description: "John Boyega played Finn (FN-2187) in the sequel trilogy"
)

holo10.image.attach(
  io: File.open(Rails.root.join('db/seed-images/john-boyega.jpg')),
  filename: 'john-boyega.jpg',
  content_type: 'image/jpg',
  identify: false
)
