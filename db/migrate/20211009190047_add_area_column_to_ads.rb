class AddAreaColumnToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :Land_Area, :string
  end
end
