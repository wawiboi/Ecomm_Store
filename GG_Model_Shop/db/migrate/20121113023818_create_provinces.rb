class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.integer :id
      t.string :name
      t.decimal :pst
      t.decimal :hst
      t.decimal :gst

      t.timestamps
    end
  end
end
