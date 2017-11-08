# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# PROVINCES
provinces = Province.create([
              { name: 'Alberta',                    abbrv: 'AB',  pst_rate: 0.0 },
              { name: 'British Columbia',           abbrv: 'BC',  pst_rate: 0.07 },
              { name: 'Manitoba',                   abbrv: 'MB',  pst_rate: 0.08 },
              { name: 'New-Brunswick',              abbrv: 'NB',  pst_rate: 0.10 },
              { name: 'Newfoundland and Labrador',  abbrv: 'NL',  pst_rate: 0.10 },
              { name: 'Northwest Territories',      abbrv: 'NT',  pst_rate: 0.0 },
              { name: 'Nova Scotia',                abbrv: 'NS',  pst_rate: 0.10 },
              { name: 'Nunavut',                    abbrv: 'NU',  pst_rate: 0.0 },
              { name: 'Ontario',                    abbrv: 'ON',  pst_rate: 0.08 },
              { name: 'Prince Edward Island',       abbrv: 'PE',  pst_rate: 0.10 },
              { name: 'Quebec',                     abbrv: 'QC',  pst_rate: 0.09975 },
              { name: 'Saskatchewan',               abbrv: 'SK',  pst_rate: 0.05 },
              { name: 'Yukon',                      abbrv: 'YK',  pst_rate: 0.0 } ])

# CATEGORIES
categories = Category.create([
              { name: 'Adventure',  description: 'Have an exciting and exotic adventure in a wild, foreign location.' },
              { name: 'Action',     description: "Gun fights! Fist fights! Car chases! Have an adrenaline filled vacation full of excitement!" },
              { name: 'Horror',     description: 'Experience dread and terror. Come face to face with darkness, and live to tell the tale.' },
              { name: 'Romance',    description: 'Meet your perfect match in a romantic setting. Find love in a completely foreign land.' },
              { name: 'Relaxing',   description: 'Let your troubles melt away and recharge your batteries in a relaxing setting.' },
              { name: 'Custom',     description: 'Craft your ideal vacation by combining elements from any of our packages.'}])

# EVENT TYPES
event_types = EventType.create([
              { name: 'Boss Fight' },
              { name: 'Encounter' },
              { name: 'Sport Event' },
              { name: 'Co-Op Activity'}])

# CHARACTERS
characters = Character.create([
              { name: 'Bowser',           description: 'King of the Koopas' },
              { name: 'Princess Peach',   description: 'Monarch of the Mushroom Kingdom' },
              { name: 'Mario',            description: 'Heroic plumber' },
              { name: 'Samus Aran',       description: 'Intergalatic bounty hunter' },
              { name: 'Dracula',          description: 'The King of Darkness' },
              { name: 'Simon Belmont',    description: 'Legendary vampire hunter' },
              { name: 'Dr. Wily',         description: 'Evil robot mastermind' },
              { name: 'Megaman',          description: 'Heroic blue robot' },
              { name: 'Mother Brain',     description: 'Leader of the space pirates.' }])

# EVENT
events = Event.create([
              { name: 'Fight with Bowser',          event_type: event_types[0],   price: 200.0,     characters: [ characters[0] ],    description: 'Have a fight to the bitter end agains the King of the Koopa.' },
              { name: 'Picnic with Peach',          event_type: event_types[1],   price: 250.0,     characters: [ characters[1] ],    description: 'Enjoy a picnic on a sunny day with the Princess. Includes all the delicacies of the Musroom Kingdom. '},
              { name: 'Karting with Mario',         event_type: event_types[2],   price: 200.0,     characters: [ characters[2] ],    description: 'Take some highspeed laps around a selection of the best tracks from the Mario Kart series.' },
              { name: 'Capturing Metroids',         event_type: event_types[3],   price: 300.0,     characters: [ characters[3] ],    description: "Infiltrate the space pirates headquarters and capture a live Metroid to return to the galatic federation, aided by the galaxy's best bounty hunter."},
              { name: 'Destroy Dracula',            event_type: event_types[0],   price: 250.0,     characters: [ characters[4] ],    description: 'Face off against the King of Darkness, and destoy the darkness that has fallen over Transylvania!' },
              { name: 'Tour of Castlevania',        event_type: event_types[3],   price: 200.0,     characters: [ characters[5] ],    description: "Get a tour of the world's deadliest castle from the world's greatest vampire hunter." },
              { name: 'Dinner with Dr. Wily',       event_type: event_types[1],   price: 150.0,     characters: [ characters[6] ],    description: 'Sit down and pick the brain of one of the greatest minds in the history of robotics. Hear how he built the robot masters!' },
              { name: 'Defeat the Robot Masters',   event_type: event_types[0],   price: 300.0,     characters: [ characters[7] ],    descripiton: 'Help Megaman as he takes on a collection of the toughest Robot masters from the Megaman Universe!'},
              { name: 'Destroy Mother Brain',       event_type: event_types[0],   price: 225.0,     characters: [ characters[8] ],    description: 'Defeat the criminal mind behind the space pirates and shut down their operation once and for all!' },
              { name: 'Soccer with Megaman',        event_type: event_types[2],   price: 150.0,     characters: [ characters[7] ],    descripiton: 'Get on the soccer pitch and play with or against the blue bomber.' },
              { name: 'Tour the Mushroom Kingdom',  event_type: event_types[3],   price: 200.0,     characters: [ characters[2] ],    description: 'Mario will lead you on a tour through all the different levels of the Mushroom Kingdom.' },
              { name: } ])

# LOCATIONS
locations = Location.create([
              { name: 'Mushroom Kingdom',     game: 'Mario Bros.',    system: 'Nintendo',   price: 100.0,   description: 'The idyllic world of the mushroom kingdom. Including diverse biomes such as Ice World, Giant World, Water World, and the lava filled Koopa Kingdom.' },
              { name: 'Zebes',                game: 'Metroid',        system: 'Nintendo',   price: 125.0,   description: 'The dangerous planet of the space pirates. Explore seemingly endless caverns, and twisting mazes of underground labratories. Be sure to bring a map.' },
              { name: 'Transylvania',         game: 'Castlevania',    system: 'Nintendo',   price: 100.0,   description: 'The appearance of Castlevania on the hills overlooking the dark forrests of Transylvania has brought a curse upon these simple people. Beware the demons that haunt the night.' },
              { name: '20XX',                 game: 'Mega Man',       system: 'Nintendo',   price: 150.0,   description: 'In the bright future of 20XX, robots work for the betterment of humanity. Until a group of robots begin to attack mankind. Only one hero can stop them. Megaman!' }])

# DISCOUNT
discounts = Discount.create([
              { type: 'Full Game Discount',   amount: 0.3 },
              { type: 'Non-Combat Discount',  amount: 0.2 }])

# PACKAGES
packages = Package.create([
              { name: 'Relax in the Mushroom Kingdom',    location: locations[0],     category: categories[4],    events: [ events[1], events[2] ],   discounts: [ discounts[1] ],    description: 'Spend a relaxing weekend hanging out with Princess Peach, and Mario!' },
              { name: 'Free the people of Transylvania',  location: locations[2],     category: categories[2],    events: [ events[4], events[5] ],   discounts: [ discounts[0] ],    descripiton: 'Free the people of Transylvania from the terrible curse that is being visitied upon them!' },
              { name: 'Save the Metroids',                location: locations[1],     category: categories[1],    events: [ events[3], events[8] ],   discounts: [ discounts[0] ],    description: 'Rescue Metroids from the space pirates and put an end to their blight upon the solar system.' },
              { name: 'Sports and Dinner in 20XX',        location: locations[3],     category: categories[4],    events: [ events[6], events[9] ],   discounts: [ discounts[1] ],    description: 'Have dinner with Dr. Wily before taking to the field and playing some soccer with Megaman and the Robot Masters.' },
              { name: 'Fight the Koopa',                  location: locations[0],     category: categories[0],    events: [ events[0], events[10] ],  discounts: [ discounts[0] ],    description: 'Visit all the worlds of the Musroom kingdom, then do battle with the evil King of the Koopa!' },
              ])