require 'faker'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Watch.destroy_all

4.times do
  Watch.create(
    brand: Faker::Commerce.brand,
    model: Faker::Vehicle.model,
    price_per_day: Faker::Commerce.price,
    description: Faker::Lorem.sentence(word_count: 4),
    url: Faker::LoremFlickr.image(size: "50x60"),
    available_from: Faker::Time.forward(days: 23, period: :morning),
    available_until: Faker::Time.backward(days: 14, period: :evening),
    user_id: 1
  )
end
