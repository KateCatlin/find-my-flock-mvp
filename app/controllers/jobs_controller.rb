class JobsController < ApplicationController
  def show
    if current_user.nil?
      redirect_to new_registration_registration_path
    else
      @job = Job.find(params[:id])
      @already_applied = current_user.applications.where(job: @job).any?
      @application = Application.find_by(user: current_user, job: @job)
      @user = current_user
    end
  end
end
