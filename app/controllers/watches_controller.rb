class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def new
    @watch = Watch.new
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def create
    @watch = Watch(params_watch)
      if @watch.save
        redirect_to watch_path(@booking)
      else
        render :new, status: :unprocessable_entity
      end
  end

private

def params_watch
  params.require(:watch).permit(:brand, :status, :model, :url, :description, :year, :price_per_day, :availabe_for, :available_until, :user_id)
end

end
