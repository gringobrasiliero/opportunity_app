class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.belongs_to :user, index:true, foreign_key:true
      t.timestamps
    end
  end
end
