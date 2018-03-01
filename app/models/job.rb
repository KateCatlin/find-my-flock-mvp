class Job < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries

end
