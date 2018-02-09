require 'rest-client'

class Restaurant < ApplicationRecord

  def self.getplaces(latitude, longitude)
    apiKey = ""
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},%20#{longitude}&radius=500&type=restaurant&key=#{apiKey}"
    response = RestClient.get(url)
    jsonResponse = JSON.parse(response)['results']
    jsonResponse.each do |restaurant|
      Restaurant.find_or_create_by(name: restaurant.name, latitude: restaurant.geometry.location.lat, longitude: restaurant.geometry.location.lng)
    end
  end

end
