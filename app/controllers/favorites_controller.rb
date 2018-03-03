class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(job_id: params[:job_id])
    favorite.user = current_user
    if favorite.save
      redirect_to dashboard_index_path, notice: 'Job has been added to your favorite!'
    else
      redirect_to dashboard_index_path, alert: 'Something went wrong...'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.user = current_user
    if @favorite.destroy
      redirect_to dashboard_index_path, notice: "Deleted from your fav list"
    else
      redirect_to dashboard_index_path, alert: 'Something went wrong...'
    end
  end

end


