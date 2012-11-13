class Grade < ActiveRecord::Base
  attr_accessible :grade_type, :gundam_model_id, :id
  
  #associations
  has_many :gundam_models_to_grades
  has_many :gundam_models, :through => gundam_models_to_grades
  
  #validations
  validates_presence_of :grade_type, :gundam_model_id
end
