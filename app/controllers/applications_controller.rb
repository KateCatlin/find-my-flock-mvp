class ApplicationsController < ApplicationController
  before_action :set_application, except: [:create]

 def create
  application = Application.new(job_id: params[:job_id])
  application.user = current_user
  if application.save
    redirect_to job_path(application.job)
  else
  end
end

def rejected
  @application.state = "rejected"
  @application.save
end

def in_progress
  @application.state = "in_progress"
  @application.save
end

def matched
  @application.state = "matched"
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
