class Create < ActiveRecord::Migration
  def change
    create_table :genres_restaurants, id: false do |t|
      t.integer :genre_id
      t.integer :restaurant_id
    end
  end
end


# rails will not creat time stamps when i want to create 
# has to many relation