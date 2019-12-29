class RemoveAuthorFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :uid
    remove_column :users, :provider
  end

  def down
    add_column :users, :uid, :string
    add_column :users, :provider, :string
  end
end
