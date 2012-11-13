class GundamModelsToGrade < ActiveRecord::Base
  attr_accessible :grade_id, :gundam_model_id, :price, :quantity
  
  #associations
  belongs_to :gundam_model
  belongs_to :grade
  has_many :line_items
  
  #validations
  validates_presence_of :price, :quantity
end
