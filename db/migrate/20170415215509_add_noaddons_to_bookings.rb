class AddNoaddonsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :noaddons, :boolean
  end
end
