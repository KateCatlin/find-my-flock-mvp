class AddGitHubProfileToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :github_profile, :string
  end
end
