class AddOmniauthToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_index :users, :provider
    
    add_index :users, :uid
  end
end
