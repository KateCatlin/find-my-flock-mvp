class DashboardController < ApplicationController
  def index
    # if current_user.incomplete?
    #   flash[:notice] = "To match your perfect jobs, we need more info!"
    #   redirect_to user_edit
    # end

    @jobs = Job.all
    @favorited = current_user.favorites.where(job: @job).any?
  end
end
