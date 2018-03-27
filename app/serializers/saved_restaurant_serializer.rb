class SavedRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :tried, :rating
  belongs_to :restaurant
  has_many :dishes
end
