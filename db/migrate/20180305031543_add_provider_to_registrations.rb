class AddProviderToRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :provider, :string
    add_column :registrations, :uid, :string
  end
end
