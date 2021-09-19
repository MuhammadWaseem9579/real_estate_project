class AddAdsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :address
      t.string :type
      t.float :area
      t.float :price
      t.string :city
      t.string :description
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :pic4
      t.string :phone_no
    end
  end
end
