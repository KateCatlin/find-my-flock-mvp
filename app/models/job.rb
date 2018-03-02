class Job < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries


  def favorited?(user)
    self.favorites.where(user_id: user.id).any?
  end

  def favorite_by(user)
    self.favorites.where(user_id: user.id).first
  end

  # def self.isfavorited(user)
  #   where(favorited: true)
  # end
end
