class Api::V1::RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render json: @restaurant
    else
      #do nothing
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  def fetchrestaurants
    latitude = restaurant_params[:latitude]
    longitude = restaurant_params[:longitude]
    apiKey = ENV["PLACES_API_KEY"]
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},%20#{longitude}&radius=500&type=restaurant&key=#{apiKey}"
    response = RestClient.get(url)
    @jsonResponse = JSON.parse(response)['results']
    render json: @jsonResponse
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:latitude, :longitude, :name, :location, :price_range, :api_id)
  end
end
