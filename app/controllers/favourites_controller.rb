class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    favourites_boolean = Favourite.where(car_id: @car.id).exists?

    if favourites_boolean
    else
      @favourite = Favourite.new
      @favourite.car_id = @car.id
      @favourite.save
    end

    redirect_to car_path(@car)
  end
end
