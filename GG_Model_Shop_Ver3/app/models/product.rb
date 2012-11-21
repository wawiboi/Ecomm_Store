class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image, :name, :price, :stock_quantity
  belongs_to :category
end
