class MoodsController < ApplicationController

# before_action :authorize, only: [:index, :show]

  def index
    @moods = Mood.all
  end

  def show
    @mood = Mood.find(params[:id])
  end
end
