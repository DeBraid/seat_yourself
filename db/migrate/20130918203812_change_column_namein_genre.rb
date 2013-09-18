class ChangeColumnNameinGenre < ActiveRecord::Migration
  def change
    change_table :genres do |t|
      t.rename :type, :tag
    end
  end
end
