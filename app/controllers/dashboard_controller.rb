class DashboardController < ApplicationController

  def index
    @jobs = Job.all
    @my_matched_jobs = matched_jobs
    @favorited = current_user.favorites.map(&:job)
    @applied = current_user.applications.map(&:job)
  end

  def matched_jobs
    return Job.tagged_with(current_user.value_list, :on => :values)
  end
end
