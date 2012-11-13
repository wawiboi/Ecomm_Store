class CreateGundamModels < ActiveRecord::Migration
  def change
    create_table :gundam_models do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.integer :grade_id

      t.timestamps
    end
  end
end
