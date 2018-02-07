class CreateSavedRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_restaurants do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :restaurant, foreign_key: true
      t.boolean :tried
      t.integer :rating
      t.timestamps
    end
  end
end
