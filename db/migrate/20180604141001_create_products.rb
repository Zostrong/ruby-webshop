class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.integer :price, default: 0

      t.timestamps
    end
  end
end
