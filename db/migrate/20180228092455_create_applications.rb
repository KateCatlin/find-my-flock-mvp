class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.string :state, default: 'pending'

      t.timestamps
    end
  end
end
