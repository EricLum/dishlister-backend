class AddApiIdtoRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :api_id, :string
  end
end
