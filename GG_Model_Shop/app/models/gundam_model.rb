class GundamModel < ActiveRecord::Base
  attr_accessible :description, :grade_id, :id, :name
  
  #associations
  has_many :gundam_models_to_grades
  has_many :grades, :through => gundam_models_to_grades
  
  #validations
  validates_presence_of :description, :grade_id, :name
end
