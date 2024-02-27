class Watch < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :brand, :model, :description, :year, :price_per_day, presence: true

  has_one_attached :photo
end
