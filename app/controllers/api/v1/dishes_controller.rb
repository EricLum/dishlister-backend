class Api::V1::DishesController < ApplicationController

  def create
    byebug
    @dish = Dish.new(dish_params)
    if @dish.save
      render json: @dish
    else

    end

  end

  def show
    @dish = Dish.find(params[:id])
    render json: @dish
  end
  #
  # def update
  #   @dish = Dish.find_by(name: dish_params[:name], saved_restaurant_id: dish_params[:saved_restaurant_id])
  #
  #   @dish.update(dish_params)
  # end
  #
  # def destroy
  #   @dish = Dish.find_by(name: dish_params[:name], saved_restaurant_id: dish_params[:saved_restaurant_id])
  #   @dish.destroy
  # end

  def dish_params
    params.require(:dish).permit(:name, :price, :description, :saved_restaurant_id)
  end

end
