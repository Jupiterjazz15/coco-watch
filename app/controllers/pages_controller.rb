class PagesController < ApplicationController
  def home
  end

  def dashboard
    @section = params[:section]
    @watches = current_user.watches
    @bookings_of_my_watches = Booking.where(watch_id: current_user.watches.pluck(:id))
    @bookings = current_user.bookings
  end
end
