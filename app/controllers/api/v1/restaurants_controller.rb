class Api::V1::RestaurantsController < ApplicationController

  def fetchrestaurants
    latitude = restaurant_params[:latitude]
    longitude = restaurant_params[:longitude]
    apiKey = "AIzaSyC_F9vvOrZ7xHIxjTaRlbgU-SVERl1fJPo"
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},%20#{longitude}&radius=500&type=restaurant&key=#{apiKey}"
    response = RestClient.get(url)
    @jsonResponse = JSON.parse(response)['results']
    render json: @jsonResponse
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:latitude, :longitude)
  end
end
