class CreateStorefronts < ActiveRecord::Migration[5.2]
  def change
    create_table :storefronts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
