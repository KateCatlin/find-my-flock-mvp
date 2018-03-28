class AddGetsMailToRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :gets_mail, :boolean
  end
end
