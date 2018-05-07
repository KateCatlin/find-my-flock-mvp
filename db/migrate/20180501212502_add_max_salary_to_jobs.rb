class AddMaxSalaryToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :max_salary, :integer, :default => 200000
  end
end
