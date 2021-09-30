class CreateTableFavouriteAds < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_ads do |t|
      t.integer :user_id
      t.integer :ad_id
      t.datetime :created_at
      t.datetime :update_at
    end
  end
end
