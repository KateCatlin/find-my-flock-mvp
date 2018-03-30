class UsersController < ApplicationController
  before_action :set_collections, only: [:edit]
  before_action :set_user, only: [:show, :edit, :destroy, :update, :activate, :deactivate, :edit_skills, :edit_skills_return]

  def index
  end

  def show
  end

  def edit
    @user_readable_skills = @user.text_skills
  end

  def update
    if @user.update(user_params)
      @user.add_tags(params[:tags])
      # binding.pry
      update_mailchimp
      redirect_to edit_skills_user_path(@user)
    else

    end
  end

  def update_mailchimp
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    gibbon.timeout = 15
    gibbon.open_timeout = 15
    gibbon.symbolize_keys = true
    gibbon.debug = false
    gibbon.lists(ENV['MAILCHIMP_LIST_ID']).members(Digest::MD5.hexdigest(@user.registration.email)).upsert(body: {email_address: @user.registration.email, status: "subscribed", merge_fields: {FNAME: @user.first_name, LNAME: @user.last_name}})
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

  def user_params
    params.require(:user).permit(:first_name, :last_name, :location, :resume_file_path, :photo)
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

  def set_collections
    @skills = User::SKILLS
    @values = User::VALUES
    @salaries = User::SALARIES
    @locations = User::LOCATIONS
  end

end
