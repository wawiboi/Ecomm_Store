class ProductsController < InheritedResources::Base
  
  def front
    @products = Product.where(:onsale => true)
  end
  
end
