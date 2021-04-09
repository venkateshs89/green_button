class AddSlugToStorefronts < ActiveRecord::Migration[5.2]
  def change
    add_column :storefronts, :slug, :string
    add_index :storefronts, :slug, unique: true
  end
end
