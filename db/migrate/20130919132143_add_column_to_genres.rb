class AddColumnToGenres < ActiveRecord::Migration
  def change
    change_table :genres do |t|
      t.rename :tag, :cuisine
      t.string :price_range
    end
  end
end
