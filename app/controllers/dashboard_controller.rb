class DashboardController < ApplicationController
  def index
    @jobs = Job.all
    @favorited = current_user.favorites.where(job: @job).any?
  end
end
