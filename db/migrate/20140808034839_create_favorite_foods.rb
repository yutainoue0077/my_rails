class CreateFavoriteFoods < ActiveRecord::Migration
  def change
    create_table :favorite_foods do |t|
      t.string :favorite_food
      t.string :favoriteFood_japanese
      t.integer :favoriteFood_id

      t.timestamps
    end
  end
end
