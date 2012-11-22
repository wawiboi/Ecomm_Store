class AddOnsaleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :onsale, :boolean
  end
end
