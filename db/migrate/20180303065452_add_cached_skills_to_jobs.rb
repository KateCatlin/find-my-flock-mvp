class AddCachedSkillsToJobs < ActiveRecord::Migration[5.1]
  def self.up
    add_column :jobs,  :cached_skill_list, :string
    Job.reset_column_information
    # next line makes ActsAsTaggableOn see the new column and create cache methods
    ActsAsTaggableOn::Taggable::Cache.included(Job)
    Job.find_each(:batch_size => 1000) do |p|
      p.skill_list # it seems you need to do this first to generate the list
      p.save!
    end
  end
end
