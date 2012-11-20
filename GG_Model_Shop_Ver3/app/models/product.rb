class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image, :name, :price, :stock_quantity
  validates_presence_of :description, :name
end
