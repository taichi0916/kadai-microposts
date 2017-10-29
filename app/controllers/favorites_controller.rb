class FavoritesController < ApplicationController
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'ユーザがお気に入りしました。'
    redirect_back(fallback_location: root_url)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_back(fallback_location: root_url)
  end
end
