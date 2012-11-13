class Province < ActiveRecord::Base
  attr_accessible :gst, :hst, :id, :name, :pst
  
  #associations
  has_many :customers
  
  #validations
  validates_precense_of :gst, :hst, :name, :pst
end
