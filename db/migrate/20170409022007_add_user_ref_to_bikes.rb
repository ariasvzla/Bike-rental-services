class AddUserRefToBikes < ActiveRecord::Migration[5.0]
  def change
    add_reference :bikes, :user, foreign_key: true
  end
end
