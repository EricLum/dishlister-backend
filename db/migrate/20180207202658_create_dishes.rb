class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.belongs_to :saved_restaurant, foreign_key: true
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
