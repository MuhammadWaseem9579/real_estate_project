class AddUserIdToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :user_id, :integer
    add_column :ads, :created_at, :datetime
    add_column :ads, :updated_at, :datetime
  end
end
