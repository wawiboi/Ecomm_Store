class ProductsController < InheritedResources::Base
  
  def front
    @products = Product.where(:onsale => true).limit(4)
    @products_new = Product.where(:new => true).limit(4)
  end
  
  def index
    @products = Product.order("onsale desc")
  end
end
