class AddColumnsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :industry, :string
    add_column :products, :markets, :string, array: true, default: []
    add_column :products, :technologies, :string, array: true, default: []
    add_column :products, :physical_form, :string, array: true, default: []
    add_column :products, :identification_and_functionality, :jsonb, null: false, default: {}
    add_column :products, :features_and_benefits, :jsonb, null: false, default: {}
    add_column :products, :applications_and_uses, :jsonb, null: false, default: {}
    add_column :products, :properties, :jsonb, null: false, default: {}
    add_column :products, :regulatory_and_compliance, :jsonb, null: false, default: {}
    add_column :products, :regional_availability, :string, array: true, default: []
  end
end
