class DashboardController < ApplicationController
  def index
    # if current_user.incomplete?
    #   flash[:notice] = "To match your perfect jobs, we need more info!"
    #   redirect_to user_edit
    # end

    @jobs = Job.all
  end
end
