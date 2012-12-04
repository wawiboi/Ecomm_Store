ActiveAdmin.register Product do
   form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :price
        f.input :stock_quantity
        f.input :image
        f.input :onsale, :as => :boolean
        f.input :new, :as => :boolean
        f.input :category_id, :as => :select, :collection => Category.all
      end
      f.buttons
   end
   
  show do
    render product
  end
  
  index do
    column 'Gundam Model', :sortable => :name do |product|
      div :class => 'bold' do
        product.name
      end
      div do
        image_tag product.image, :size => "150x100"
      end
    end 
    column 'Description' do |product|
      product.description.truncate(100)
    end
    column 'Price', :sortable => :price do |product|
      number_to_currency product.price.to_f
    end
    column :category
    column 'Stock Quantity', :sortable => :stock_quantity do |product|
      product.stock_quantity
    end
    column 'On Sale' do |product|
      if product.onsale?
        div do
          'Yes'
        end
      else
        div do
          'No'
        end
      end 
    end
    
    column 'New Product' do |product|
      if product.new?
        div do
          'Yes'
        end
      else
        div do
          'No'
        end
      end 
    end
    default_actions  
  end
end
