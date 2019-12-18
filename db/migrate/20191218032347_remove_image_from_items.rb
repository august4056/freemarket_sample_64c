class RemoveImageFromItems < ActiveRecord::Migration[5.2]
  def up
    remove_column :items, :image
  end

  def down
    add_column :items, :image, :string
  end
end
