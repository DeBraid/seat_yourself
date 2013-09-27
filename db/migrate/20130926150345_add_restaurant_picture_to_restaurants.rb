class AddRestaurantPictureToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :restaurant_picture, :string
  end
end
