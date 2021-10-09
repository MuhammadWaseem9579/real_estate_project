class AddFeaturedAdColumnToAds < ActiveRecord::Migration[5.2]
  def change
    change_column :ads, :price, :integer
    add_column :ads, :featured_ad, :boolean , default: false
  end
end
