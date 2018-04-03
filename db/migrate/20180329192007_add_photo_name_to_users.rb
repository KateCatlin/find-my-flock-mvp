class AddPhotoNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :photo_name, :string
  end
end
