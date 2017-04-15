class AddAddonsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :addons, :string
  end
end
