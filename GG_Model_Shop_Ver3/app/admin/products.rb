ActiveAdmin.register Product do
   form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :price
        f.input :stock_quantity
        f.input :image
        f.input :category_id, :as => :select, :collection => Category.all
      end
      f.buttons
   end
   
  show do
    div do
      simple_format product.description
      image_tag product.image
    end
  end
end
