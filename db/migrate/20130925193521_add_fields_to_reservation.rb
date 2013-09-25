class AddFieldsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :party_size, :integer
    add_column :reservations, :reserved_time, :datetime
    remove_column :reservations, :begin_time
  end
end
