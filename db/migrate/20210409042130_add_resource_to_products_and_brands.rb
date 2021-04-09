class AddResourceToProductsAndBrands < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :resource_id, :integer
    add_column :products, :resource_type, :string

    add_column :brands, :resource_id, :integer
    add_column :brands, :resource_type, :string

    add_index :products, [:resource_id]
    add_index :brands, [:resource_id]
  end
end
