class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :shipping_cost
      t.string :description
      t.string :status
      t.string :categories
      t.string :sku_code
      t.string :sku
      t.integer :price
      t.integer :inventory
      t.string :inventory_status

      t.timestamps null: false
    end
  end
end
