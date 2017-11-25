# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

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


# DISCOUNT
discounts = Discount.create([
              { kind: 'Full Game Discount',   amount: 0.3 },
              { kind: 'Non-Combat Discount',  amount: 0.2 }])

# PACKAGES
packages = Package.create([
              { name: 'Relax in the Mushroom Kingdom',         location: locations[0],     category: categories[4],    discounts: [ discounts[1] ],      description: 'Spend a relaxing weekend hanging out with Princess Peach, and Mario!' },
              { name: 'Free the people of Transylvania',       location: locations[2],     category: categories[2],    discounts: [ discounts[0] ],      description: 'Free the people of Transylvania from the terrible curse that is being visitied upon them!' },
              { name: 'Save the Metroids',                     location: locations[1],     category: categories[1],    discounts: [ discounts[0] ],      description: 'Rescue Metroids from the space pirates and put an end to their blight upon the solar system.' },
              { name: 'Sports and Dinner in 20XX',             location: locations[3],     category: categories[4],    discounts: [ discounts[1] ],      description: 'Have dinner with Dr. Wily before taking to the field and playing some soccer with Megaman and the Robot Masters.' },
              { name: 'Fight the Koopa',                       location: locations[0],     category: categories[0],    discounts: [ discounts[0] ],      description: 'Visit all the worlds of the Musroom kingdom, then do battle with the evil King of the Koopa!' },
              { name: 'Gourmet Golf in Dream Land',            location: locations[4],     category: categories[4],    discounts: [ discounts[1] ],      description: 'Enjoy a day of golf at the Dream Course, followed by an evening of treats while Gourmet Racing.' },

              { name: 'Save Dream Land',                       location: locations[4],     category: categories[0],    discounts: [ discounts[0] ],      description: 'Bring peace back to Dream Land, then overthrow the tyrannical monarchy of King Dedede! Be the hero of Dream Land!' },
              { name: 'Dash on Land and Air',                  location: locations[5],     category: categories[4],    discounts: [ discounts[1] ],      description: 'See Earth Zone from both land and air. Get a high flying tour with Tails, then dash through the landscape at lightning speeds with Sonic.' },
              { name: 'Smash the Eggman Empire',               location: locations[5],     category: categories[0],    discounts: [ discounts[0] ],      description: 'Foil the plans of the evil Dr. Robotnik. Gather the Chaos Emeralds, destroy his army of Badnik robots, and bet the Eggman' },
              { name: 'Boss Rush',                             location: locations[6],     category: categories[0],    discounts: [],                    description: 'The ultimate challenge! Battle all bosses! Can you survive the utimate test of your skills?' }])