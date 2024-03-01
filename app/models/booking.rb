class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :watch

  def accepted!
    update(booking_status: 'accepted')
  end

  def declined!
    update(booking_status: 'declined')
  end
end
