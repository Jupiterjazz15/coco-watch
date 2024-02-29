class PagesController < ApplicationController
  def home
  end

  def dashboard
    @section = params[:section]
    @watches = current_user.watches
    @bookings = current_user.bookings
  end
end
