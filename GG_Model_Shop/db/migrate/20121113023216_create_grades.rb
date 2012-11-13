class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :id
      t.string :grade_type
      t.integer :gundam_model_id

      t.timestamps
    end
  end
end
