class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :city
      t.integer :province_id
      t.string :postal_code
      t.integer :phone_number

      t.timestamps
    end
  end
end
