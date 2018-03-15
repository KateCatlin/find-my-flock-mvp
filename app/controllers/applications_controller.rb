class ApplicationsController < ApplicationController
  before_action :set_application, except: [:create, :destroy]

 def create
  @application = Application.new
  @job = Job.find(params[:job_id])
  @application.job = @job

  @application.user = current_user
  # if @application.save
  #   redirect_to job_path(@job)
  # else
  # end
  if @application.save
    respond_to do |format|
      format.html { redirect_to job_path(@job) }
      format.js
    end

    # redirect_to dashboard_index_path, notice: 'Job has been added to your favorite!'
  else
    respond_to do |format|
      format.html { redirect_to job_path(@job) }
      format.js
    end
    # redirect_to dashboard_index_path, alert: 'Something went wrong...'
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
  @job = Job.find(params[:job_id])
  @application = Application.find(params[:id])
  @application.destroy
  respond_to do |format|
    format.html { redirect_to job_path(@job) }
    format.js
  end
end



private

def application_params
  params.require(:application).permit(:user_id, :job_id)
end
def set_application
  @application = Application.find(params[:id])
end
end
