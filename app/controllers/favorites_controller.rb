class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @job = Job.find(params[:job_id])
    @favorite.job = @job
    @favorite.user = current_user
    if @favorite.save
      respond_to do |format|
        format.html { redirect_to dashboard_index_path }
        format.js
      end

      # redirect_to dashboard_index_path, notice: 'Job has been added to your favorite!'
    else
      respond_to do |format|
        format.html { render 'dashboard/index' }
        format.js
      end
      # redirect_to dashboard_index_path, alert: 'Something went wrong...'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @job = @favorite.job
    @favorite.destroy
      respond_to do |format|
        format.html { redirect_to dashboard_index_path }
        format.js
      # redirect_to dashboard_index_path, alert: 'Something went wrong...'
    end
  end

end
