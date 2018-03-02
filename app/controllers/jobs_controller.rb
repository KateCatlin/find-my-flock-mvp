class JobsController < ApplicationController
scope :favorited, -> { where(favorited: true) }

  def show
    @job = Job.find(params[:id])
    @already_applied = current_user.applications.where(job: @job).any?
  end
end
