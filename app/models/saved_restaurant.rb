class SavedRestaurant < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :dishes
end
