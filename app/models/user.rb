class User < ApplicationRecord
  belongs_to :registration
  has_many :applications
  has_many :favorites

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true

  acts_as_taggable_on :skills, :values, :salaries

  def add_tags(tags)
    save_salaries
  end

  def save_salaries
    binding.pry
    tags = params[:tags]["salaries"].compact
    puts salaries
    tags.each do |category|
      # category.each do |tag|
      current_user.salary_list.add('salary')
    end
    puts @user.skills
  end

end
