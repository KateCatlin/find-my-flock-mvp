class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true

  acts_as_taggable_on :skills, :values, :locations

  def user_favorite(user)
    self.favorites.where(user_id: user.id).first
  end

  def favorite_by(user)
    self.favorites.where(user_id: user.id).first
  end

  def add_tags(tags)
    self.value_list = tags["values"]
    self.save!
    save_locations(tags["locations"])
    self.save!
    self.skill_list = tags["skills"]
    self.save!
  end

  def clean_skill(skill)
    skill.to_s.split(/\d/).first
  end

  def delete_locations
    self.location_list.remove(self.location_list)
  end

  def return_skills_hash
    upcased_array = self.skill_list.map(&:upcase)
    new_hash = {}
    array_of_hash = upcased_array.map do |element|
      index_num = element.index(/\d/)
      if !index_num.nil?
        language = element[0...index_num]
        skill_level = element[index_num..-1].to_i
        if new_hash[language]
          new_hash[language] = skill_level if new_hash[language] < skill_level
        else
          new_hash[language] = skill_level.to_i
        end
      else
        new_hash[element] = 1
      end
    end
    new_hash
  end

  def provide_sponsorship?
    self.US_work_permit_job
  end

  def save_locations(locations)
    delete_locations
    locations.each do |location|
      self.location_list.add(location, parse: false)
    end
  end

  def text_skills
    self.skills.map { |skill| clean_skill(skill) }.uniq
  end
end
