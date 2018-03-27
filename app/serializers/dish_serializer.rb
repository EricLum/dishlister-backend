class DishSerializer < ActiveModel::Serializer
  attributes :id, :saved_restaurant_id, :name, :price, :description
  belongs_to :saved_restaurant
end
