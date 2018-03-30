class JobsController < ApplicationController
  before_action :set_collections, only: [:new, :edit]
  before_action :set_job, except: [:new, :create]

  def new
    @job = Job.new
  end

  def create
    if @job = Job.new(job_params)
      @job.add_tags(params[:tags])
      binding.pry
      redirect_to edit_skills_job_path(@job)
    else
      render :new
    end
  end

  def edit
    @job_readable_skills = @job.text_skills
  end

  def edit_skills
    @skills_numeric_hash = @job.return_skills_hash
  end

  def edit_skills_return
    skills_to_add = []
    params.each do |key, value|
      if key.start_with?('skills')
        skills_to_add << value
      end
    end
    @job.skill_list = skills_to_add
    @job.save!
    redirect_to root_path
  end

  def job_params
    params.require(:job).permit(:title, :company, :description, :photo)
  end

  def set_collections
    @skills = Job::SKILLS
    @values = Job::VALUES
    @salaries = Job::SALARIES
    @locations = Job::LOCATIONS
  end

  def set_job
    @job = Job.find(params[:id])
  end

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

  def update
    if @job.update(job_params)
      @job.add_tags(params[:tags])
      redirect_to edit_skills_job_path(@job)
    else
    end
  end

end
