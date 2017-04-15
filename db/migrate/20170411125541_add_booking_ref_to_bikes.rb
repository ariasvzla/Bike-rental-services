class AddBookingRefToBikes < ActiveRecord::Migration[5.0]
  def change
    add_reference :bikes, :booking, foreign_key: true
  end
end
