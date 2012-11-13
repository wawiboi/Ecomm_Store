class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :first_name, :id, :last_name, :postal_code, :province_id
  
  #associations
  belongs_to :province
  has_many :orders
  
  #validations
  validates_presence_of :address, :city, :country, :email, :first_name, :last_name, :postal_code
end
