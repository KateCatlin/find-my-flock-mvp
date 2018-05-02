class AddMinSalaryToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :min_salary, :integer
  end
end
