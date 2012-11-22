class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image, :name, :price, :stock_quantity, :onsale
  belongs_to :category
  
  validates_presence_of :description, :name, :price, :stock_quantity
  
end
