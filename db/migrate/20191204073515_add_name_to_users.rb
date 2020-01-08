class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :telephone, :integer
    add_column :users, :nickname, :string
  end
end
