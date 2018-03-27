class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :location, :price_range, :latitude, :longitude, :api_id
  has_many :saved_restaurants , serializer: SavedRestaurantSerializer
  has_many :dishes, serializer: DishSerializer
end
