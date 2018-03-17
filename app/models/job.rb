class Job < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true


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

  def salary_range
    array_of_salaries = []
    self.salary_list.each do |salary|
      array_of_salaries << Integer(salary[1..-1].split(",").first)
    end
    array_of_salaries.sort!
    lowest_salary = "$#{array_of_salaries[0]},000"
    highest_salary = "$#{array_of_salaries[-1]+10},000"
    return [lowest_salary, highest_salary]
  end

  # def self.isfavorited(user)
  #   where(favorited: true)
  # end
end
