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

users_data = [
  { first_name: "Antoine", last_name: "Lebeau", phone_number: "123-456-7890", avatar: "https://ca.slack-edge.com/T02NE0241-U06DG7195EE-41fa3d1f8d29-512", email: "antoine@test.com", password: "testpassword" },
  { first_name: "Coralie", last_name: "Haller", phone_number: "234-567-8901", avatar: "https://ca.slack-edge.com/T02NE0241-U06DG28K0CT-fafee26638ca-512", email: "coralie@test.com", password: "testpassword" },
  { first_name: "Guillaume", last_name: "Dupuis", phone_number: "345-678-9012", avatar: "https://ca.slack-edge.com/T02NE0241-U06D6P7V0UX-2fe19bee1d04-512", email: "guillaume@test.com", password: "testpassword" },
  { first_name: "Antoine", last_name: "Clavel", phone_number: "456-789-0123", avatar: "https://ca.slack-edge.com/T02NE0241-U06EKJ558NL-g43dd42946ee-512", email: "toto@test.com", password: "testpassword" }
]
users_data.each do |user_data|
  User.create!(user_data)

end


brands = ["Rolex", "Omega", "Tag Heuer", "Seiko", "Casio", "Timex"]
models = ["Submariner", "Speedmaster", "Carrera", "Presage", "G-Shock", "Expedition"]
addresses = ["12 Rue de Rivoli, Paris, France", "34 Avenue des Champs-Élysées, Paris, France", "7 Rue de la Paix, Paris, France", "56 Boulevard Saint-Germain, Paris, France", "23 Rue du Faubourg Saint-Honoré, Paris, France", "89 Rue de Rennes, Paris, France", "45 Rue Montorgueil, Paris, France", "18 Rue du Faubourg du Temple, Paris, France", "67 Rue de Belleville, Paris, France", "29 Rue de la Roquette, Paris, France", "51 Boulevard de Sébastopol, Paris, France", "14 Avenue de l'Opéra, Paris, France", "36 Rue du Bac, Paris, France", "82 Avenue de France, Paris, France", "9 Rue de Rivoli, Paris, France", "63 Avenue des Gobelins, Paris, France", "28 Rue de la Huchette, Paris, France", "72 Boulevard de Clichy, Paris, France", "16 Rue de la Paix, Paris, France", "38 Rue de la Pompe, Paris, France"]
descriptions = ["Luxury dive watch", "Classic chronograph", "Stylish dress watch", "Sporty digital watch"]
image_urls = ["https://rb.gy/c98mip","http://tinyurl.com/5n7pr9dx","http://tinyurl.com/2fzca3cd", "http://tinyurl.com/yc79fyej", "http://tinyurl.com/4athzj2r", "http://tinyurl.com/bde63rvs", "http://tinyurl.com/2svn6zvx", "http://tinyurl.com/a99rzkr2", "http://tinyurl.com/3pvv66ac", "http://tinyurl.com/4azpff56", "http://tinyurl.com/5csfnu8t", "http://tinyurl.com/mtmrz874", "http://tinyurl.com/34tmzj8y", "http://tinyurl.com/bdcw4wae", "http://tinyurl.com/4zxnnydf", "http://tinyurl.com/34ea53b8", "http://tinyurl.com/364pp4kp", "http://tinyurl.com/x4wckcu3"]


20.times do
  file = URI.open("https://bijoux-totem.fr/60382-large_default/cluse-montre-femme-fluette.jpg")
  watch = Watch.new(
    brand: brands.sample,
    year: rand(1900..Time.now.year),
    model: models.sample,
    latitude: rand(-90.0..90.0),
    longitude: rand(-180.0..180.0),
    address: addresses.sample,
    price_per_day: 125,
    description: descriptions.sample,
    url: image_urls.sample,
    available_from: DateTime.now,
    available_until: DateTime.now + rand(1..30).days,
    user_id: User.pluck(:id).sample
  )
  watch.photo.attach(io: file, filename: "yolo.jpg", content_type: "imgae/jpg")
  watch.save
  puts "Watch created"
end
