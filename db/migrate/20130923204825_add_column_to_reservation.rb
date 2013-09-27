class AddColumnToReservation < ActiveRecord::Migration
  def change
    change_table :reservations do |t|
      t.integer :begin_time
      t.string :notes
    end
  end
end
