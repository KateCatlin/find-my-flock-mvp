class RemoveLocationFromJob < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :location, :string
  end
end
