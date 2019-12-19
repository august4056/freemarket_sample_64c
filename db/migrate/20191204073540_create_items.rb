class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.string :image
      t.text :detail
      t.text :category
      t.text :state
      t.integer :delivery_fee
      t.text :delivery_area
      t.integer :delivery_date
      t.integer :price
      t.integer :fee
      t.integer :gross_profit
     

      t.timestamps
    end
  end
end
