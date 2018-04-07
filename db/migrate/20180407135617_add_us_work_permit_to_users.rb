class AddUsWorkPermitToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :US_work_permit, :boolean
  end
end
