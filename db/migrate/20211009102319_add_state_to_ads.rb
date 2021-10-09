class AddStateToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :state, :string, default: "running"
  end
end
