class AddDayToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :reserved_day, :integer
  end
end
