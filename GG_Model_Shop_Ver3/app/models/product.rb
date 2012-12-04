class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image, :name, :price, :stock_quantity, :onsale, :new
  belongs_to :category
  
  validates_presence_of :description, :name, :price, :stock_quantity, :category_id
  validates :description, :length => {  :minimum => 10,
                                        :maximum => 500,
                                        :too_short => "must have at least %{count} words",
                                        :too_long  => "must have at most %{count} words"
  }
  
end
