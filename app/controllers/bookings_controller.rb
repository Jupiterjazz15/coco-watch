class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @watch = Watch.find(params[:watch_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @watch = Watch.find(params[:watch_id])
    @booking.watch = @watch
    if booking.save
      redirect_to watch_path(@watch)
    else
      render :new, :status, :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(@booking).permit(:start_date, :end_date, :total_price, :booking_status, :user_id, :watch_id)
  end
end
