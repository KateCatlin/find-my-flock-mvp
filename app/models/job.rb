class Job < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries, :locations


  def user_favorite(user)
    self.favorites.where(user_id: user.id).first
  end

  def favorite_by(user)
    self.favorites.where(user_id: user.id).first
  end

  def save_skills(skills)
    skills.each do |skill|
      i = skill.slice(-1).to_i
      temp_skill = skill
      while i < 5 do
        temp_skill = "#{skill.chop}#{(i+1).to_s}"
        skills << temp_skill
        i += 1
      end
    end
    self.skill_list = skills
    self.save!
  end

  # def self.isfavorited(user)
  #   where(favorited: true)
  # end
end
