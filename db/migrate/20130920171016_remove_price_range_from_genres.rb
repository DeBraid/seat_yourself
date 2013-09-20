class RemovePriceRangeFromGenres < ActiveRecord::Migration
  def change
    remove_column :genres, :price_range, :string
  end
end
