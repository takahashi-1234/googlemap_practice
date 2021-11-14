class FavoritesController < ApplicationController
  def create
    spot=Spot.find(params[:spot_id])
    @favorite=Favorite.create(spot_id: spot.id)
    redirect_to root_path
  end
end
