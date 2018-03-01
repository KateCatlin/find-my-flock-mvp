class ApplicationsController < ApplicationController
  before_action :set_application, except: [:create]

  def create
    application = Application.new(application_params)
    if application.save
      redirect_to job_path(application.job_id)
    else
    end
  end

  def rejected
    @application.status = "rejected"
    @application.save
  end

  def in_progress
    @application.status = "in_progress"
    @application.save
  end

  def matched
    @application.status = "matched"
    @application.save
  end

  def update
  end

  def destroy
    @application.destroy
    redirect_to job_path(@application.job_id)
  end

  def application_params
    params.require(:application).permit(:user_id, :job_id)
  end
  def set_application
    @application = Application.find(params[:id])
  end
end
