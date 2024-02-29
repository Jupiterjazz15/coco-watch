class ApplicationController < ActionController::Base
  before_action :set_watch

  private

  def set_watch
    @watch = Watch.new
  end
end
