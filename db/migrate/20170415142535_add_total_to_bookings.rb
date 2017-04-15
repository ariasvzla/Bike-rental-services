class AddTotalToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :total, :decimal
  end
end
