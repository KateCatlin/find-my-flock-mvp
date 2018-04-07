class AddDefaultValueToUsWorkPermit < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :US_work_permit, :boolean, default: false
  end

  def down
    change_column :users, :US_work_permit, :boolean, default: nil
  end
end
