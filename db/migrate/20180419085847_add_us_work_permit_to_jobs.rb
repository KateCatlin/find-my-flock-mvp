class AddUsWorkPermitToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :US_work_permit_job, :boolean, default: false
  end
end
