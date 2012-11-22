class Contact < ActiveRecord::Base
  attr_accessible :address, :city, :phone_number, :postal_code, :province_id
end
