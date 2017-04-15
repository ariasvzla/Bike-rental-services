class AddBikeRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :bike, foreign_key: true
  end
end
