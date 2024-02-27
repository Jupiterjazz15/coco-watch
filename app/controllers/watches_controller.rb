class WatchesController < ApplicationController
  before_action :set_watch, only: %i[show edit update destroy]
  def index
    @watches = Watch.all
  end

  def new
    @watch = Watch.new
  end

  def show
    @booking = Booking.new
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    if @watch.save
      redirect_to watch_path(@watch)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @watch.update(watch_params)
    if @watch.save
      redirect_to watch_path(@watch)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @watch.delete
    redirect_to watches_path
  end

  private

  def set_watch
    @watch = Watch.find(params[:id])
  end

  def watch_params
    params.require(:watch).permit(:brand, :model, :photo, :description, :year, :price_per_day, :available_from, :available_until)
  end
end
