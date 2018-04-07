class Opportunities < ActiveRecord::Migration[5.1]
  def change
    create_table :opportunities do |t|
      t.integer :category_id
      t.string :description
      t.string :title

  end
end
end
