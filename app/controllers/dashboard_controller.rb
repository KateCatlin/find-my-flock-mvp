class DashboardController < ApplicationController

  def index
    @jobs = Job.all
    @favorited = current_user.favorites.map(&:job)
  end

end
