class ChangeColumnNameTypeToPropertyType < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :ads, :type, :property_type
  end
end
