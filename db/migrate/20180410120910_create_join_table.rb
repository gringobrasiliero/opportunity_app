class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :opportunities
  end
end
