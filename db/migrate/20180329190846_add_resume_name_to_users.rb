class AddResumeNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :resume_name, :string
  end
end
