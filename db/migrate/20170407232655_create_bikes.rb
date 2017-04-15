class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :title
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.boolean :status
      t.string :category
    
      t.timestamps
    end
  end
end
