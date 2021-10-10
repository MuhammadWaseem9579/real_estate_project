class AddColToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :purpose, :string
    add_column :ads, :bed, :integer
    add_column :ads, :bath, :integer
    add_column :ads, :electricity, :boolean
    add_column :ads, :electricity_backup, :boolean
    add_column :ads, :mosque, :boolean
    add_column :ads, :community_gym, :boolean
    add_column :ads, :parking_space, :boolean
    add_column :ads, :nearby_school, :boolean
    add_column :ads, :nearby_hospital, :boolean
    add_column :ads, :security_staff, :boolean
  end
end
