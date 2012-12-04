class FinderController < ApplicationController
  
  def index
    @products = Product.all
    @categories = Category.all
  end
  
  def get_products_by_category
    @products = Product.where(:category_id => params[:id])
    @categories = Category.all
  end
  
  def search_results
    @keyword = params[:keyword]
    
    @products = Product.where("name LIKE ?", "%#{@keyword}%")
  end
end
