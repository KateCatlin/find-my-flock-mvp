class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
    @already_applied = current_user.applications.where(job: @job).any?
    @application = Application.find_by(user: current_user, job: @job)
  end
end
