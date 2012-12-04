class ProductsController < InheritedResources::Base
  
  def front
    @products = Product.where(:onsale => true).limit(5)
  end
  
  def index
    @products = Product.order("onsale desc")
  end
end
