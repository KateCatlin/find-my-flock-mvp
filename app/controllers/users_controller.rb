class UsersController < ApplicationController
  before_action :set_collections, only: [:new]
  before_action :set_user, only: [:show, :edit, :destroy]

  def index
  end

  def new

    @user = User.new
  end

  def create
    raise
    user = User.new(user_params)
    if user.save
      redirect_to dashboard_index_path(user)
    else
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
    end
  end

  def destroy
    # waiting to add the status column on user.
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :location, :resume_file_path)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_collections
    @skills = User::SKILLS
    @values = User::VALUES
    @salaries = User::SALARIES
  end
end
