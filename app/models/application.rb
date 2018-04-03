class Application < ApplicationRecord
  belongs_to :user
  belongs_to :job

  validates :state, presence: true, inclusion: {in: %w(pending rejected in_progress matched)}
  validates_uniqueness_of :user_id, :scope => [:job_id]

end
