class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start
      t.datetime :return

      t.timestamps
    end
  end
end
