class Api::V1::SavedRestaurantsController < ApplicationController

  def create
    @saved_restaurant = SavedRestaurant.new(saved_restaurant_params)

    if @saved_restaurant.save
      render json: @saved_restaurant
    else
      #do nothing
    end
  end

  private
  def saved_restaurant_params
    params.require(:saved_restaurant).permit(:user_id, :restaurant_id, :tried, :rating)
  end
end
