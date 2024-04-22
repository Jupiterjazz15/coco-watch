require 'faker'
require 'open-uri'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Watch.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Antoine", last_name: "Lebeau", phone_number: "123-456-7890", avatar: "https://ca.slack-edge.com/T02NE0241-U06DG7195EE-41fa3d1f8d29-512", email: "antoine@test.com", password: "testpassword")
p "#{user1.first_name} is created"

user2 = User.create!(first_name: "Coralie", last_name: "Haller", phone_number: "234-567-8901", avatar: "https://ca.slack-edge.com/T02NE0241-U06DG28K0CT-fafee26638ca-512", email: "coralie@test.com", password: "testpassword" )
p "#{user2.first_name} is created"

user3 = User.create!(first_name: "Guillaume", last_name: "Dupuis", phone_number: "345-678-9012", avatar: "https://ca.slack-edge.com/T02NE0241-U06D6P7V0UX-2fe19bee1d04-512", email: "guillaume@test.com", password: "testpassword")
p "#{user3.first_name} is created"

user4 = User.create!(first_name: "Antoine", last_name: "Clavel", phone_number: "456-789-0123", avatar: "https://ca.slack-edge.com/T02NE0241-U06EKJ558NL-g43dd42946ee-512", email: "toto@test.com", password: "testpassword")
p "#{user4.first_name} is created"

watch1 = Watch.create!(
  brand: "Omega",
  model: "SEAMASTER AQUA TERRA",
  description: "La Seamaster Aqua Terra constitue un magnifique hommage au vaste patrimoine maritime d’OMEGA. Le fond de ce modèle de 38 mm, doté d’un boîtier symétrique façonné en acier inoxydable, est orné d’un motif de vagues.",
  year: "2023",
  price_per_day: "100",
  address: "90 Rue Saint-Louis en l'Île, 75004 Paris",
  user_id: User.first.id
)

watch1.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'O1.png')),
  filename: 'O1.png',
  content_type: 'image/png'
)

p "#{watch.model} is created"
