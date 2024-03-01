class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :watch

  scope :not_nil, -> { where.not(booking_status: nil) }

  def accepted!
    update(booking_status: 'accepted')
  end

  def declined!
    update(booking_status: 'declined')
  end
end
