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
              { name: 'Explore Mars',                          category: categories[0],    discounts: [ discounts[0] ],      package_contents: [],               price: 100.00,       description: 'Set foot onto the soil of Mars and discover what mysteries the Maritan surface holds.' },
              { name: 'The Depths of Atlantis',                category: categories[0],    discounts: [],                    package_contents: [],               price: 140.00,       description: 'Discover an advanced technological society living in the deepest depths of the ocean.' },
              { name: 'War in Ancient Egypt',                  category: categories[1],    discounts: [],                    package_contents: [],               price: 150.00,       description: "Become a hero in the Pharoh's army, and earn the blessings of the ancient gods." },
              { name: 'Tropical Paradise',                     category: categories[3],    discounts: [],                    package_contents: [],               price: 170.00,       description: 'Visit a breath-taking tropical paradise. Discover excitement along sun drenched shores.' },
              { name: 'The Crab Nebula',                       category: categories[0],    discounts: [ discounts[0] ],      package_contents: [],               price: 200.00,       description: 'Witness the birth and death of solar systems in the awe inspiring Crab Nebula.' },
              { name: 'Sweet Life in Candy Land',              category: categories[4],    discounts: [],                    package_contents: [],               price: 100.00,       description: 'Stay in your Gingerbread B&B while enjoying the smells and tastes of an world made of candy.' },

              { name: 'The World at War',                      category: categories[1],    discounts: [],                    package_contents: [],               price: 300.00,       description: 'See the destruction and devistation of World at War, where brave souls fight for the fate of the future.' },
              { name: 'The Steam Revolution',                  category: categories[0],    discounts: [],                    package_contents: [],               price: 180.00,       description: 'Experience the alternate history of an technological revoution run on steam.' },
              { name: 'Forest of Fantasy',                     category: categories[0],    discounts: [],                    package_contents: [],               price: 200.00,       description: 'Epic adventure awaits in the fantasy forest, filled with magic and mystery.' },
              { name: 'Haunting Terror',                       category: categories[2],    discounts: [],                    package_contents: [],               price: 160.00,       description: 'Can you survive the crippling terror of a haunted mansion in the remote mountains of Transylvania?' }])

#ABOUT_CONTENTS
about_contents = AboutContent.create([
              { title: 'It began in 1985...',                                                                                               content: 'A ragtag band of programmers began exploring the concept of virtual reality from a tiny cottage in Palo Alto. Spearheaded by the 24-year-old Jaron Lanier, VPL Research helped make VR a buzzword in the mid-to-late 80s and earned substantial investment, before filing for bankruptcy at the decade’s end. Despite mass media interest from publications like Scientific American and Wired, the technology wasn’t there—or it was too expensive—and the audience was a tad too niche. Thirty years have passed since then, and the landscape has finally shifted in virtual reality’s favor.'},
              { title: 'The most immersive experience ever...',       image: 'AboutTechnolog01.png',            image_left: true,           content: 'Everything that we know about our reality comes by way of our senses. Our entire experience of reality is simply a combination of sensory information and our brains processing of that information. At VR Vacations we are constantly pushing the boundaries of technology to create the most immersive experience for our visitors. Our rooms are built to provide complete auditory, temperature, and scent experiences that work in conjunction with the artistically crafted worlds. You will be presented with a version of reality that isn’t there, but from your perspective it will be perceived as real.'},
              { title: 'The latest haptic feedback technologies...',  image: 'AboutTechnolog02.png',            image_left: false,          content: "The technology that really separates VR Vacation from the competition is our patented Viva-Reality Suit. With 60 individual points of feedback across the upper and lower body, and 52 discrete channels, the washable, neoprene two-piece Viva-Reality Suit is interlaced with conductive thread that creates tactile feedback using neuromuscular electrical stimulation. With different strengths and durations of impulse, it's pitched as being able to mimic anything from basic interactions with objects in the virtual world to the impact of bullets and explosions -- even in-game weather can be translated into electrical stimuli, with optional temperature control modules for added effect."}])

#CONTACT_INFOS
contact_infos = ContactInfo.create([
              { name: 'VR Vacations Winnipeg',          description: 'The site of our first virtual destination experience is located in the Beautiful Exchange District.',                         address: '300 Waterfront Dr.',            city: 'Winnipeg',           postal_code: 'R#B 0G5',            email: 'info@vrvactions.com',             phone_number: '204-676-2388',      province: provinces[2] },
              { name: 'VR Vacations Toronto',           description: 'Our newest location is located on Yonge St in the heart of Toronto, and features 12 state of the art vacation suites.',       address: '20 Yonge St.',                  city: 'Toronto',            postal_code: 'M5B 1S8',            email: 'info_toronto@vrvacations.com',    phone_number: '437-788-9367',      province: provinces[8] }])

#ORDER_STATUSES
order_statuses = OrderStatus.create([
              { name: 'In Progress' },
              { name: 'Placed' },
              { name: 'Shipped' },
              { name: 'Cancelled' } ])