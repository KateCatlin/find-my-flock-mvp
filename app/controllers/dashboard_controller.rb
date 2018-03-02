class DashboardController < ApplicationController

  def index
    @jobs = Job.all
    @favorited = current_user.favorites.map(&:job)
    @applied = current_user.applications.map(&:job)
  end

end
