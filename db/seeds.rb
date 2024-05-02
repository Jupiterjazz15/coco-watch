require 'faker'
require 'open-uri'

Booking.destroy_all
Watch.destroy_all
User.destroy_all

### USER 1 : Fares  et ses montres ###
user1 = User.create!(first_name: "Fares", last_name: "Meier", phone_number: "123-456-7890", avatar: "https://ca.slack-edge.com/T02NE0241-U06E45MRBG8-638095ca8161-512", email: "fares@test.com", password: "azerty")
p "#{user1.first_name} is created"

watch1 = Watch.create!(brand: "Omega", model: "CONSTELLATION GLOBEMASTER", description: "The Globemaster is already a legendary name in the OMEGA family. Now it has been updated to become the world's first Master Chronometer, further enhancing its reputation within the watchmaking industry.", year: 2023, price_per_day: 100, address: "90 Rue Saint-Louis en l'Île, 75004 Paris", user_id: User.first.id)
file = URI.open("https://www.omegawatches.com/media/catalog/product/o/m/omega-constellation-globemaster-co-axial-master-chronometer-39-mm-13023392102001-00111c.png?w=1100")
watch1.photo.attach(io: file, filename: "watch1.png", content_type: "image/png")
p "#{watch1.model} is created"

watch2 = Watch.create!(brand: "Rolex", model: "Cosmograph Daytona", description: "A key part of the model’s identity is the bezel moulded with a tachymetric scale for measuring average speeds of up to 400 miles or kilometres per hour. Blending high technology with sleek aesthetics, the black bezel is reminiscent of the 1965 model that was fitted with a black Plexiglas bezel insert.", year: 2022, price_per_day: 300, address: "90 Rue Saint-Louis en l'Île, 75004 Paris", user_id: User.first.id)
file = URI.open("https://media.rolex.com/image/upload/q_auto/f_auto/t_v7/c_limit,w_1920/v1/catalogue/2024/upright-c/m126539tbr-0002")
watch2.photo.attach(io: file, filename: "watch2.png", content_type: "image/png")
p "#{watch2.model} is created"

### USER 2 : Coralie et ses montres ###

user2 = User.create!(first_name: "Coralie", last_name: "Haller", phone_number: "234-567-8901", avatar: "https://ca.slack-edge.com/T02NE0241-U06DG28K0CT-fafee26638ca-512", email: "coralie@test.com", password: "azerty" )
p "#{user2.first_name} is created"

watch3 = Watch.create!(brand: "Omega", model: "SPEEDMASTER 38", description: "The Speedmaster 38 mm collection has been crafted with simplicity, size and colour in mind, yet still retains the look and heritage of OMEGA’s most famous chronograph.", year: 2024, price_per_day: 200, address: "12 rue Crémieux, 75012, Paris", user_id: User.second.id)
file = URI.open("https://www.omegawatches.com/media/catalog/product/o/m/omega-speedmaster-38-co-axial-chronometer-chronograph-38-mm-32428385002002-fb9ad7.png?w=1100")
watch3.photo.attach(io: file, filename: "watch3.png", content_type: "image/png")
p "#{watch3.model} is created"

watch4 = Watch.create!(brand: "Rolex", model: "Day-Date 40", description: "The Rolex fluted bezel is a mark of distinction. Originally, the fluting of the Oyster bezel had a functional purpose: it served to screw the bezel onto the case helping to ensure the waterproofness of the watch.", year: 2020, price_per_day: 300, address: "12 rue Crémieux, 75012, Paris", user_id: User.second.id)
file = URI.open("https://media.rolex.com/image/upload/q_auto/f_auto/t_v7/c_limit,w_2440/v1/catalogue/2024/upright-c/m228235-0055")
watch4.photo.attach(io: file, filename: "watch4.png", content_type: "image/png")
p "#{watch4.model} is created"

### USER 3 : Pedro et ses montres ###

user3 = User.create!(first_name: "Pedro", last_name: "Gomes Pinto", phone_number: "345-678-9012", avatar: "https://ca.slack-edge.com/T02NE0241-U06D0LP6407-13add817550f-512", email: "pedro@test.com", password: "azerty")
p "#{user3.first_name} is created"

watch5 = Watch.create!(brand: "Rolex", model: "GMT-Master II", description: "This model features a black dial and a two-colour Cerachrom bezel insert in grey and black ceramic. In addition to conventional hour, minute and seconds hands, the GMT-Master II features an arrow-tipped hand, which circles the dial once every 24 hours, as well as a bidirectional rotatable 24-hour graduated bezel.", year: 2019, price_per_day: 200, address: "35 Rue de Montreuil, 75011 Paris", user_id: User.third.id)
file = URI.open("https://media.rolex.com/image/upload/q_auto/f_auto/t_v7/c_limit,w_2440/v1/catalogue/2024/upright-c/m126710grnr-0004")
watch5.photo.attach(io: file, filename: "watch5.png", content_type: "image/png")
p "#{watch5.model} is created"

watch6 = Watch.create!(brand: "Cluse", model: "Vigoureux Leather Dark Brown", description: "The Vigoureux is CLUSE's take on a luxury sports watch: minimalist & ultra thin, but also masculine & bold. A conversation starter par excellence with its striking blue sunray dial, integrated brown Italian leather strap and its perfectly brushed & polished rose gold stainless steel case. Powered by a reliable Miyota quartz movement, this watch will be the perfect companion for your more ambitious days and nights.", year: 2021, price_per_day: 30, address: "35 Rue de Montreuil, 75011 Paris", user_id: User.third.id)
file = URI.open("https://cluse.com/cdn/shop/products/1_34.jpg?v=1685543492&width=1080")
watch6.photo.attach(io: file, filename: "watch6.jpg", content_type: "image/jpeg")
p "#{watch6.model} is created"

### USER 4 : Clothilde et ses montres ###

user4 = User.create!(first_name: "Clothilde", last_name: "Scache", phone_number: "456-789-0123", avatar: "https://ca.slack-edge.com/T02NE0241-U06EHGW24V6-63f7f2c8e5ec-512", email: "clothilde@test.com", password: "azerty")
p "#{user4.first_name} is created"

watch7 = Watch.create!(brand: "Chanel", model: "Première édition", description: "Steel coated with yellow gold (0.1 micron) and black leather, black-lacquered dial", year: 2022, price_per_day: 300, address: "4 Cité Véron, 75018 Paris", user_id: User.fourth.id)
file = URI.open("https://www.chanel.com/images//t_one///q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_1240/premiere-edition-originale-yellow-black-calfskin-gold-coating-packshot-default-h6951-9530399621150.jpg")
watch7.photo.attach(io: file, filename: "watch7.jpg", content_type: "image/jpeg")
p "#{watch7.model} is created"

watch8 = Watch.create!(brand: "Chanel", model: "J12 PARADOXE", description: "White and black highly resistant ceramic and steel", year: 2022, price_per_day: 250, address: "4 Cité Véron, 75018 Paris", user_id: User.fourth.id)
file = URI.open("https://www.chanel.com/images//t_one///q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_1240/j12-paradoxe-watch-caliber-12-1-38-mm-white-black-white-ceramic-steel-black-ceramic-packshot-default-h6515-8832549814302.jpg")
watch8.photo.attach(io: file, filename: "watch8.jpg", content_type: "image/jpeg")
p "#{watch8.model} is created"
