class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :id
      t.integer :quantity
      t.decimal :price
      t.integer :order_id
      t.integer :gundam_model_id
      t.integer :grade_id

      t.timestamps
    end
  end
end
