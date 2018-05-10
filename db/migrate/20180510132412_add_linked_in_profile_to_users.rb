class AddLinkedInProfileToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :linkedin_profile, :string
  end
end
