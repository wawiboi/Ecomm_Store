class CreateGundamModelsToGrades < ActiveRecord::Migration
  def change
    create_table :gundam_models_to_grades do |t|
      t.integer :gundam_model_id
      t.integer :grade_id
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
