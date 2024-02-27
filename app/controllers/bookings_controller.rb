class BookingsController < ApplicationController
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
      redirect_to watch_path(@watch)
      flash[:notice] = "Votre location est en cours de validation"
    else
      render :new, :status, :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :watch_id)
  end
end
