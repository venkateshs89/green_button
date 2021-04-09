class AddSlugToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :slug, :string
    add_index :brands, :slug, unique: true
  end
end
