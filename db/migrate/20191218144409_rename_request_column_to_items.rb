class RenameRequestColumnToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :category, :category_id
    rename_column :items, :delivery_area, :prefecture_id
  end
end
