class AddReferencesToReservation < ActiveRecord::Migration
  def change
    change_table :reservations do |t|
      t.references :restaurant
      t.references :user
    end
  end
end
