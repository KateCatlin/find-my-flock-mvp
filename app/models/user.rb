class User < ApplicationRecord
  belongs_to :registration
  has_many :applications
  has_many :favorites

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries

  def add_tags(tags)
    save_salaries(tags["salaries"].compact)
    save_skills(tags["skills"])
    save_values(tags["values"])
  end

  def save_salaries(salaries)
    salaries.each do |salary|
      self.salary_list.add(salary)
    end
    self.save
  end

  def save_skills(skills)
    skills.each do |skill|
      self.skill_list.add(skill.downcase)
    end
    self.save
  end

  def save_values(values)
    values.each do |value|
      self.value_list.add(value)
    end
    self.save
  end

  def remove_all_skills
    self.skill_list.each do |skill|
      self.skill_list.remove(skill.to_s)
    end
    self.skill_list.remove(self.skill_list.first)
    self.skill_list.remove(self.skill_list.last)
    self.save
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


























