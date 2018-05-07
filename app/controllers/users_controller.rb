class UsersController < ApplicationController
  before_action :set_collections, only: [:edit]
  before_action :set_user, only: [:show, :edit, :destroy, :update, :update_resume, :activate, :deactivate, :edit_skills, :edit_skills_return]

  def index
  end

  def show
  end

  def edit
    @user_readable_skills = @user.text_skills
  end

  def update
    if current_user
      if @user.update(user_params)
        @user.add_tags(params[:tags])
        resume_name = params[:user][:resume_file_path].original_filename if params[:user][:resume_file_path]
        photo_name = params[:user][:photo].original_filename if params[:user][:photo]
        @user.update({resume_name: resume_name, photo_name: photo_name})
        @user.registration.gets_mail? ? update_mailchimp : ""
        redirect_to edit_skills_user_path(@user)
      else
        if @user.errors.any?
          redirect_to edit_user_path{'#cv'}, alert: 'Invalid format: You can only upload a pdf, docx, png or jpg document.'
        else
        end
      end
    else
    end
  end

  def update_resume
    @user.update(user_params)
    redirect_back(fallback_location: dashboard_index_path)
  end


  def update_mailchimp
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    gibbon.timeout = 15
    gibbon.open_timeout = 15
    gibbon.symbolize_keys = true
    gibbon.debug = false
    gibbon.lists(ENV['MAILCHIMP_LIST_ID']).members(Digest::MD5.hexdigest(@user.registration.email)).upsert(body: {email_address: @user.registration.email, status: "subscribed", merge_fields: {FNAME: @user.first_name, LNAME: @user.last_name}, interests: {"8b90dea17b": true, "ba4727f76c": true}})
  end

  def activate
    @user.update(is_active: true)
    redirect_to user_path(@user)
  end

  def deactivate
    @user.update(is_active: false)
    redirect_to user_path(@user)
  end

  def destroy
    current_user.destroy
    current_user.registration.destroy
    redirect_to root_path
  end


  def set_user
    @user = User.find(params[:id])
  end

  def edit_skills
    @skills_numeric_hash = @user.return_skills_hash
  end

  def edit_skills_return
    skills_to_add = []
    params.each do |key, value|
      if key.start_with?('skills')
        skills_to_add << value
      end
    end
    @user.save_skills(skills_to_add)
    redirect_to dashboard_index_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :location, :resume_file_path, :photo, :US_work_permit, :min_salary)
  end

   def second_user_params
    params.permit(:first_name, :last_name, :location, :resume_file_path, :photo, :US_work_permit)
  end

  def set_collections
    @skills = User::SKILLS
    @values = User::VALUES
    @locations = User::LOCATIONS
  end

end
