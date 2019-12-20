class ChangeDatatypeCategory < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :category, :integer
  end
end
