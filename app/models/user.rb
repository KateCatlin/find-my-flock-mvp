class User < ApplicationRecord
  belongs_to :registration
  has_many :applications
  has_many :favorites

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries

end
