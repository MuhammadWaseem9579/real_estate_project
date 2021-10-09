class AddDeleteToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :deleted, :boolean, default: :false
  end
end
