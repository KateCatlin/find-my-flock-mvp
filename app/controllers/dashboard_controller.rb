class DashboardController < ApplicationController

  def index
    @jobs = Job.all
    @my_matched_jobs = matched_jobs
    @favorited = current_user.favorites.map(&:job)
    @applied = current_user.applications.map(&:job)
  end


  def matched_jobs
    value_matched_jobs = Job.tagged_with(current_user.value_list, :on => :values)
    skill_matched_jobs = []
    array_of_user_skills = current_user.skill_list
    array_of_job_skills =[]

    value_matched_jobs.each do |job|
      array_of_job_skills = job.cached_skill_list.split(', ') unless job.cached_skill_list.nil?
      if (array_of_job_skills - array_of_user_skills).empty?
        skill_matched_jobs << job
      end
    end
    return skill_matched_jobs
  end
end
