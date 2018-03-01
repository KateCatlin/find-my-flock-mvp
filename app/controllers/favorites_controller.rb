class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(params[:id])
    favorite.user = current_user
    favorite.save
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
  end
end
