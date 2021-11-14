class SpotsController < ApplicationController
  def index
    @spots=Spot.all
    gon.spots=Spot.all
  end

  def new
    @spot=Spot.new
  end

  def show
    @spot=Spot.find(params[:id])
  end

  def create
    @spot=Spot.new(spot_params)
    results=Geocoder.search([@spot.latitude,@spot.longitude])
    address=results.first.address
    @spot.address=address.split
    @spot.save
    redirect_to root_path
  end

  private
  def spot_params
    params.require(:spot).permit(:latitude,:longitude,:name,:operation,:body,:court_type)
  end
end
