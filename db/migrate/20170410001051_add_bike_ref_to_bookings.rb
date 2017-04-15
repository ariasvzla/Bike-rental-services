class AddBikeRefToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :bike, foreign_key: true
  end
end
