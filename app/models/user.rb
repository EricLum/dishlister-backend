class User < ApplicationRecord
  has_many :saved_restaurants
  has_many :dishes, through: :saved_restaurants
end
