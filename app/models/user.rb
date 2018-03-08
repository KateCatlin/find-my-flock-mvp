class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploader :resume_file_path, PdfUploader

  belongs_to :registration
  has_many :applications, :dependent => :destroy
  has_many :favorites, :dependent => :destroy

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update

  acts_as_taggable_on :skills, :values, :salaries, :locations

  def add_tags(tags)
    self.salary_list = tags["salaries"].compact
    self.save!
    self.value_list = tags["values"]
    self.save!
    save_locations(tags["locations"])
    self.save!
    save_skills(tags["skills"])
  end

  def save_locations(locations)
    delete_locations
    locations.each do |location|
      self.location_list.add(location, parse: false)
    end
  end

  def save_skills(skills)
    skills.each do |skill|
      i = skill.slice(-1).to_i
      temp_skill = skill
      while i > 1 do
        temp_skill = "#{skill.chop}#{(i-1).to_s}"
        skills << temp_skill
        i -= 1
      end
    end
    self.skill_list = skills
    self.save!
  end

  def delete_locations
    self.location_list.remove(self.location_list)
  end

  def competency_description(selection)
    competencies = ["Only a little knowledge", "Gaining competency", "Individual competency", "Strong competency", "Expert"]
    return competencies[selection]
  end

  def return_skills_hash
    skills_hash = {}
    self.skill_list.each do |skill|
      if skill =~ /\d/
        skills_hash[skill.chop.parameterize.underscore.to_sym] = skill.slice(-1).to_i
      else
        skills_hash[skill.parameterize.underscore.to_sym] = 1
      end
    end
    return skills_hash
  end

  def photo
    photo = self[:photo]
  end

end

























