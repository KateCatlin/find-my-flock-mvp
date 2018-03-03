class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :registration
  has_many :applications
  has_many :favorites

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries

  def add_tags(tags)
    self.salary_list = tags["salaries"].compact
    self.save!
    save_skills(tags["skills"])
    self.value_list = tags["values"]
    self.save!
  end

  def save_skills(skills)
    self.skill_list = skills
    self.save!
  end

  def competency_description(selection)
    competencies = ["Only a little knowledge", "Gaining competency", "Individual competency", "Strong competency", "Expert"]
    return competencies[selection]
  end

  def return_skills_hash
    skills_hash = {}
    self.skill_list.each do |skill|
      if skill =~ /\d/
        skills_hash[skill[0...-1].parameterize.underscore.to_sym] = skill.slice(-1).to_i
      else
        skills_hash[skill.parameterize.underscore.to_sym] = 1
      end
    end
    return skills_hash
  end

end


























