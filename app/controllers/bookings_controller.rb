class BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :decline]
  before_action :authenticate_user!, only: [:new, :create]
  def new
    @booking = Booking.new
    @watch = Watch.find(params[:watch_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @watch = Watch.find(params[:watch_id])
    @booking.watch = @watch
    @booking.user = current_user
    @booking.total_price = ((@booking.end_date.to_date - @booking.start_date.to_date).to_i + 1) * @watch.price_per_day
    if @booking.save
      redirect_to dashboard_path(section: 'bookings')
      flash[:notice] = "Votre location est en cours de validation"
    else
      render :new, :status, :unprocessable_entity
    end
  end

  def accept
    @booking.accepted!
    redirect_to dashboard_path(section: 'bookings')
  end

  def decline
    @booking.declined!
    redirect_to dashboard_path(section: 'bookings')
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(), status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :watch_id)
  end
end
