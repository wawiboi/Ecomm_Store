class LineItem < ActiveRecord::Base
  attr_accessible :grade_id, :gundam_model_id, :id, :order_id, :price, :quantity
  
  #associations
  belongs_to :order
  belongs_to :gundam_models_to_grade
  
  #validations
  validates_presence_of :grade_id, :gundam_model_id, :order_id, :price, :quantity
end
