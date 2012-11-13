class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :status
  
  #associations
  belongs_to :customer
  has_many :line_items
  
  #validations
  validates_presence_of :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
  
end
