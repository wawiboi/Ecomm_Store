class Contact < ActiveRecord::Base
  attr_accessible :address, :city, :phone_number, :postal_code, :province_id
  
  validates_presence_of :address, :city, :phone_number, :postal_code
  validates :phone_number, :numericality => { :only_integer => true }
  validates :phone_number, :length => { :minimum => 10,
                                        :maximum => 10}
  
end
