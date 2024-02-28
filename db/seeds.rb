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
Booking.destroy_all
Watch.destroy_all

User.create(email: "james@example.com", password: "password")
User.create(email: "antoine@test.com", password: "azertyuiop")

Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "https://rb.gy/c98mip",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/5n7pr9dx",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/2fzca3cd",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/yc79fyej",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/4athzj2r",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/bde63rvs",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/2svn6zvx",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/a99rzkr2",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/3pvv66ac",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/4azpff56",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/5csfnu8t",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/mtmrz874",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/34tmzj8y",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/bdcw4wae",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/4zxnnydf",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/34ea53b8",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/364pp4kp",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "http://tinyurl.com/x4wckcu3",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
Watch.create(
  brand: Faker::Commerce.brand,
  year: 1900,
  model: Faker::Vehicle.model,
  price_per_day: Faker::Commerce.price,
  description: Faker::Lorem.sentence(word_count: 4),
  url: "https://rb.gy/c98mip",
  available_from: Faker::Time.forward(days: 23, period: :morning),
  available_until: Faker::Time.backward(days: 14, period: :evening),
  user_id: User.first.id
)
