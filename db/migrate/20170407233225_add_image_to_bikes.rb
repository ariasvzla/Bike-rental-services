class AddImageToBikes < ActiveRecord::Migration[5.0]
  def change
    add_column :bikes, :image_url, :string
  end
end
