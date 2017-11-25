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
              { name: 'Relaxing',   description: 'Let your troubles melt away and recharge your batteries in a relaxing setting.' }])


# DISCOUNT
discounts = Discount.create([
              { kind: 'Sale Discount',   amount: 0.3 }])

# PACKAGES
packages = Package.create([
              { name: 'Explore Mars',                          category: categories[0],    discounts: [ discounts[0] ],      package_contents: [],               description: 'Set foot onto the soil of Mars and discover what mysteries the Maritan surface holds.' },
              { name: 'The Depths of Atlantis',                category: categories[0],    discounts: [],                    package_contents: [],               description: 'Discover an advanced technological society living in the deepest depths of the ocean.' },
              { name: 'War in Ancient Egypt',                  category: categories[1],    discounts: [],                    package_contents: [],               description: "Become a hero in the Pharoh's army, and earn the blessings of the ancient gods." },
              { name: 'Tropical Paradise',                     category: categories[3],    discounts: [],                    package_contents: [],               description: 'Visit a breath-taking tropical paradise. Discover excitement along sun drenched shores.' },
              { name: 'The Crab Nebula',                       category: categories[0],    discounts: [ discounts[0] ],      package_contents: [],               description: 'Witness the birth and death of solar systems in the awe inspiring Crab Nebula.' },
              { name: 'Sweet Life in Candy Land',              category: categories[4],    discounts: [],                    package_contents: [],               description: 'Stay in your Gingerbread B&B while enjoying the smells and tastes of an world made of candy.' },

              { name: 'The World at War',                      category: categories[1],    discounts: [],                    package_contents: [],               description: 'See the destruction and devistation of World at War, where brave souls fight for the fate of the future.' },
              { name: 'The Steam Revolution',                  category: categories[0],    discounts: [],                    package_contents: [],               description: 'Experience the alternate history of an technological revoution run on steam.' },
              { name: 'Forest of Fantasy',                     category: categories[0],    discounts: [],                    package_contents: [],               description: 'Epic adventure awaits in the fantasy forest, filled with magic and mystery.' },
              { name: 'Haunting Terror',                       category: categories[2],    discounts: [],                    package_contents: [],               description: 'Can you survive the crippling terror of a haunted mansion in the remote mountains of Transylvania?' }])