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

    respond_to do |format|
      if @watch.save
        format.html { redirect_to watch_path(@watch) }
        format.json do
          render json: {
            html: render_to_string(partial: 'shared/watch_created', locals: { watch: @watch }, formats: [:html])
          }
        end
      else
        format.html { render :new }
        format.json do
          render json: {
            html: render_to_string(partial: 'shared/form_watches', locals: { watch: @watch }, formats: [:html])
          }
        end
      end
    end
  end

  def edit
  end

  def update
    @watch.update(watch_params)
    if @watch.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @watch.delete
    redirect_to dashboard_path
  end

  private

  def set_watch
    @watch = Watch.find(params[:id])
  end

  def watch_params
    params.require(:watch).permit(:brand, :model, :photo, :description, :year, :price_per_day, :available_from, :available_until)
  end
end
